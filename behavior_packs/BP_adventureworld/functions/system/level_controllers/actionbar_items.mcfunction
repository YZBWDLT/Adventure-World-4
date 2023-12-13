# ===== 物品快捷栏标题 =====
# 当手持特定物品时，将在快捷栏标题显示物品属性。该快捷栏标题的显示优先级高于常规关卡号。

## --- 七大药水 ---

### 治疗药水
titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑ §7| §6药水上限 §a1"}]}
### 生长药水
titleraw @a[hasitem={item=aw:potion_growth,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命上限 ↑ 生命恢复 ↑ §c攻击伤害 ↓ §7| §c× 亢奋药水 × 神龟药水"}]}
### 亢奋药水
titleraw @a[hasitem={item=aw:potion_thrill,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a攻击伤害 ↑ 移动速度 ↑ §c生命 ↓ §7| §c× 生长药水 × 神龟药水"}]}
### 神龟药水
titleraw @a[hasitem={item=aw:potion_turtle,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a抗性 ↑ 伤害吸收 ↑↑ §c移动速度 ↓ §7| §c× 亢奋药水 × 生长药水"}]}
### 重生药水
titleraw @a[hasitem={item=aw:potion_rebirth,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑↑ §c攻击伤害 ↓↓§f☹ "}]}
### 净化药水
titleraw @a[hasitem={item=aw:potion_purification,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a伤害吸收 ↑ 中毒解除 ↑↑ "}]}
### 休眠药水
titleraw @a[hasitem={item=aw:potion_hibernation,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命恢复 ↑↑§f☹ §c移动速度 ↓↓§f☹ §7| §c⚠ 生长药水"}]}

## --- 绳枪 ---
titleraw @a[hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6右键（或手机版长按）使用，可以钩住一定范围内的木板方块，从而把自己拉过去"}]}

## --- 物品准星 ---
titleraw @a[hasitem={item=aw:enable_crosshair,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6右键（或手机版长按）使用，在手持绳枪时启用虚拟准星，建议未启用准星的手机版玩家使用\n§c注意：启用虚拟准星可能阻挡屏幕中央文字"}]}