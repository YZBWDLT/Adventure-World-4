# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7接下来就是丛林神殿的守关怪物了吧。 "}]}
execute @e[name=dialogue,scores={time=100}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7对，翻译说，【守关者为骷髅之王】。"}]}

execute @e[name=dialogue,scores={time=101}] ~~~ function lib/states/dialogue/disable
