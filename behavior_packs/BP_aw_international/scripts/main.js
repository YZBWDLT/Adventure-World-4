// 使用命令或附加包难以实现的内容，使用脚本来实现
// 将使用 SAPI 和 ModAPI 同时尝试实现

import { Player, world } from "@minecraft/server";

// 当玩家的御风珠砸中木板后，则传送玩家
world.afterEvents.projectileHitBlock.subscribe(event => {
    /** 御风珠击中的方块信息 */
    const blockInfo = event.getBlockHit();
    /** 御风珠击中的方块的位置 */
    const locB = blockInfo.block.location;

    // 如果：扔出的玩家真实存在，且为玩家类型；御风珠扔中了任意一种木板，则……
    if (
        event.source !== undefined
        && event.source.typeId === "minecraft:player"
        && event.projectile.typeId === "aw:wind_pearl"
        && event.dimension.runCommand(`execute if block ${locB.x} ${locB.y} ${locB.z} planks`).successCount === 1
    ) {
        /** 御风珠的位置 */
        const locE = event.location;
        /** 扔出御风珠的玩家 @type {Player} */
        const player = event.source;
        // 如果扔中顶面，则传送到投中位置的上方 1 格
        if (blockInfo.face === "Up") { player.teleport({ x: locE.x, y: locE.y + 1, z: locE.z }); }
        // 如果扔中底面，则传送到投中位置的下方 3 格
        else if (blockInfo.face === "Down") { player.teleport({ x: locE.x, y: locE.y - 3, z: locE.z }); }
        // 如果扔中东面，则传送到投中位置东边 0.7 格，下方 0.5 格
        else if (blockInfo.face === "East") { player.teleport({ x: locE.x+0.7, y: locE.y-0.5, z: locE.z }); }
        // 如果扔中西面，则传送到投中位置西边 0.7 格，下方 0.5 格
        else if (blockInfo.face === "West") { player.teleport({ x: locE.x-0.7, y: locE.y-0.5, z: locE.z }); }
        // 如果扔中南面，则传送到投中位置南边 0.7 格，下方 0.5 格
        else if (blockInfo.face === "South") { player.teleport({ x: locE.x, y: locE.y-0.5, z: locE.z+0.7 }); }
        // 如果扔中北面，则传送到投中位置北边 0.7 格，下方 0.5 格
        else if (blockInfo.face === "North") { player.teleport({ x: locE.x, y: locE.y-0.5, z: locE.z-0.7 }); }
        // 对玩家播放音效
        player.playSound("mob.endermen.portal")
    }
});
