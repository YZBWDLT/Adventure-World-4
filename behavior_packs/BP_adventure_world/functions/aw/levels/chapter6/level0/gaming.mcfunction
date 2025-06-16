# ===== 关卡游戏时时间线 =====
# 6-0 | 山峦神殿

# --- 剧情 ---

## [1] 相机视角：6-2 视角
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7加油，很快就能拿到旷野之剑了！"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好耶！对了云儿，我离开红石神殿了，接下来是什么地方？"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯......接下来是【山峦神殿】"}]}
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【丛山之间，巫师及毒虫势要万分当心。烈焰王镇守此地，熔岩之海将焚毁万物】"}]}
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7另外，还有一个重大发现！我找到了【空间贤者事记】！"}]}
## [460~960] 相机视角：面向玩家视角
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【恶魔强大异常，众多源泉赋予其无穷之法力】"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【虽其躯体可锢于封印，然其法术终难根除之】"}]}
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【是故，吾将吾之咒术赋予此剑，赐其永除邪法之力】"}]}
execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【待预言之决断之日，圣剑之光所指之处，吾之法力亦在】"}]}
execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这么说来，这把剑与我们要寻找的空间贤者也有关系啊。"}]}
execute if score timeline time matches 860 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这样的话，那我一定要成功拿到这把剑！"}]}

# --- 相机视角 ---

## [1] 6-2 视角
execute if score timeline time matches 1 run camera @a set minecraft:free pos -72 -12 -46 facing -82 -21 -35
execute if score timeline time matches 2 run camera @a set minecraft:free ease 60 linear pos -82 -21 -35
## [460~959] 面向玩家视角
    ### 清除玩家原有视角
    execute if score timeline time matches 460 run camera @a clear
    ### 生成辅助实体，并在25秒内（[460]~[959]）转过yRot = -60°（-0.12°每游戏刻）
    execute if score timeline time matches 460 run summon aw:marker -81 -31 -28 -60 0 * "rot"
    execute if score timeline time matches 460..959 as @e[name=rot] at @s run tp @s ~~~ ~-0.12
    ### 在25秒内（[461]~[959]）将玩家视角绑定到辅助实体前方8格、上方4格，其中[461]因初始化而不加ease参数
    execute if score timeline time matches 461 as @a at @e[name=rot] run camera @a set minecraft:free pos ^^4^8 facing ~~~
    execute if score timeline time matches 462..959 as @a at @e[name=rot] run camera @a set minecraft:free ease 0.1 linear pos ^^4^8 facing ~~~

# --- 剧情结束 ---
## 纯战斗模式下直接跳过剧情
execute if score storyMode settings matches 0 run function aw/levels/chapter6/level0/complete
## [960] 结束剧情并直接移除辅助实体
execute if score timeline time matches 960 run event entity @e[name=rot] aw:remove_immediately
execute if score timeline time matches 960 run function aw/levels/chapter6/level0/complete
