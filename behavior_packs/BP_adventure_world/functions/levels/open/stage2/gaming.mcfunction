# ===== 关卡游戏时时间线 =====
# 0-2 | 与田英初次对话

# --- 剧情 ---
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §b田英： §7消灭恶魔的大英雄又在赖床了......你再不出来我就要进你家掀被子了！"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哈欠......你是时间贤者，当然......"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §b田英： §7你抬头看看，太阳都当头照了，全村就你还没起床......真是一点都没变，真怕你连要做什么都忘的一干二净啊。"}]}
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7怎么会呢！我也一直在思考寻找空间贤者的事宜的！"}]}
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §b田英： §7真拿你没办法......智慧贤者和我都等你好久了。"}]}
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7嗯？云儿也来了？她在哪？"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §b田英： §7她去后山的时间神殿了，我想她应该也有些发现的吧。"}]}
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7啊！你......你等等我！我现在就出发！"}]}

# --- 剧情结束 ---
execute if score timeline time matches 700 run function levels/open/stage2/complete
