# ===== 剧情线 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7消灭恶魔的勇气贤者又在赖床了，你再不出来我就要进你家掀被子了。"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哈欠......你是时间贤者，当然......"}]}
execute @e[name=dialogue,scores={time=260}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7林乐你抬头看看，太阳都当头照了，全村就你还没起床，......真是一点没变，真怕你连要做什么都忘的一干二净啊。"}]}
execute @e[name=dialogue,scores={time=360}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7怎么会呢！我也一直在思考寻找空间贤者的事情。"}]}
execute @e[name=dialogue,scores={time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7真拿你没办法......智慧贤者和我都等你好久了。"}]}
execute @e[name=dialogue,scores={time=560}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿也来了？她在哪？"}]}
execute @e[name=dialogue,scores={time=660}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7她去后山的时间神殿了。"}]}
execute @e[name=dialogue,scores={time=760}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7啊！你......你等等我！我现在就出发！"}]}

## 解除视角锁定
execute @e[name=dialogue,scores={time=860}] ~~~ scoreboard players set @e[name=dialogue] active 1
execute @e[name=dialogue,scores={time=860}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！右键NPC可以触发对话哦，聊的愉快！=w="}]}

## 当玩家还在田英4~10格范围内，说下面这句
execute @e[name=dialogue,scores={time=1060}] ~~~ execute @e[type=aw:npc,name="田英"] ~~~ tellraw @a[r=6] {"rawtext":[{"text":"* §b田英： §7§o（小声）一提起她你就感兴趣，我就知道。"}]}

execute @e[name=dialogue,scores={time=1160}] ~~~ function lib/dialogue/disable
