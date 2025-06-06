// 使用命令或附加包难以实现的内容，使用脚本来实现
// 将使用 SAPI 和 ModAPI 同时尝试实现

import { Player, world } from "@minecraft/server";

// 当玩家的御风珠砸中木板后，则传送玩家
world.afterEvents.projectileHitBlock.subscribe(event => {
    /** 御风珠击中的方块信息 */
    const blockInfo = event.getBlockHit();
    /** 御风珠的位置 */
    const locE = event.location;
    /** 扔出御风珠的玩家 @type {Player} */
    const player = event.source;

    // 如果：扔出的玩家真实存在，且为玩家类型；御风珠扔中了任意一种木板，则……
    if (
        event.source?.typeId === "minecraft:player"
        && event.projectile.typeId === "aw:wind_pearl"
        && blockInfo.block.typeId.includes("planks")
    ) {
        /** 传送信息 */
        const teleportInfo = {
            Down: { x: locE.x, y: locE.y - 3, z: locE.z },              // 如果扔中底面，则传送到投中位置的下方 3 格
            Up: { x: locE.x, y: locE.y + 1, z: locE.z },                // 如果扔中顶面，则传送到投中位置的上方 1 格
            North: { x: locE.x, y: locE.y - 0.5, z: locE.z - 0.7 },     // 如果扔中北面，则传送到投中位置北边 0.7 格，下方 0.5 格
            South: { x: locE.x, y: locE.y - 0.5, z: locE.z + 0.7 },     // 如果扔中南面，则传送到投中位置南边 0.7 格，下方 0.5 格
            West: { x: locE.x - 0.7, y: locE.y - 0.5, z: locE.z },      // 如果扔中西面，则传送到投中位置西边 0.7 格，下方 0.5 格
            East: { x: locE.x + 0.7, y: locE.y - 0.5, z: locE.z },      // 如果扔中东面，则传送到投中位置东边 0.7 格，下方 0.5 格
        }
        // 传送玩家
        player.teleport(teleportInfo[blockInfo.face])
        // 为玩家播放传送音效
        player.playSound("mob.endermen.portal")
    }
});

// 当玩家使用弓箭击中骷髅或骷髅王后，触发对应效果
world.afterEvents.projectileHitEntity.subscribe(event => {

    // 判断为玩家用箭击中实体
    if (
        event.source?.typeId === "minecraft:player"
        && event.projectile.typeId === "minecraft:arrow"
    ) {
        const immediateKill = ["minecraft:skeleton", "minecraft:stray"];
        const dealsExtraDamage = ["aw:skeleton_king"];
        const player = event.source;
        const hitEntity = event.getEntityHit().entity;
        // 击中骷髅或流浪者后，直接秒杀
        if (immediateKill.includes(hitEntity?.typeId)) {
            hitEntity.applyDamage( 1000, { cause: "entityAttack", damagingEntity: player } );
        }
        // 击中骷髅王后，施加额外伤害
        else if (dealsExtraDamage.includes(hitEntity?.typeId)) {
            hitEntity.applyDamage( 5, { cause: "entityAttack", damagingEntity: player } );
        }
    }

})

// 当玩家使用物品后，则触发函数
world.afterEvents.itemUse.subscribe(event => {
    const usableItems = ["aw:toggle_wave", "aw:summon_monsters", "aw:kill_monsters", "aw:acoustic_stone_crystal",];
    if (usableItems.includes(event.itemStack.typeId)) {
        event.source.runCommand(`function aw/items/${event.itemStack.typeId.split(":")[1]}`);
    }
});

// 当玩家使用完毕物品后，则触发函数
world.afterEvents.itemCompleteUse.subscribe(event => {
    const usableItems = ["aw:potion_health", "aw:potion_growth", "aw:potion_thrill", "aw:potion_turtle", "aw:potion_rebirth", "aw:potion_hibernation", "aw:potion_purification",];
    if (usableItems.includes(event.itemStack.typeId)) {
        event.source.runCommand(`function aw/items/${event.itemStack.typeId.split(":")[1]}`);
    }
});

// 当玩家击杀怪物后，则触发函数
world.afterEvents.entityDie.subscribe(event => {
    /** 击杀者（预期为玩家） */
    const killer = event.damageSource.damagingEntity;
    const deadEntity = event.deadEntity;
    // 当击杀者为玩家并且死亡实体的种族为monster时，执行函数
    if (
        killer?.typeId === "minecraft:player"
        && deadEntity.runCommand("execute if entity @s[family=monster]").successCount
    ) {
        killer.runCommand("function aw/entities/player/kill_monster")
    }
});
