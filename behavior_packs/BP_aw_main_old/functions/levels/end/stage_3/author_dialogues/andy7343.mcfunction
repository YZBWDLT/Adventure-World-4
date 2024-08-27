# ===== 巴豆对话 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a巴豆（Andy7343）： §7虽然地图质量远超我的预期，还拉了这么多人参与，但拖这么长时间真是抱歉，以后我一定会尽量避免的。"}]}
execute @e[name=dialogue,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a巴豆（Andy7343）： §7一开始只是想找量筒来帮个忙......但最后他负责的内容是最多的，所有指令都是他写的。"}]}
execute @e[name=dialogue,scores={time=180}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a巴豆（Andy7343）： §7我猜你没玩过以前的冒险世界系列作品吧？在资源中心点开作者页面就能看到了，虽然装饰很简陋，但内容我还是有信心的。"}]}

execute @e[name=dialogue,scores={time=200..}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=dialogue,scores={time=200..}] ~~~ function lib/states/dialogue/disable
