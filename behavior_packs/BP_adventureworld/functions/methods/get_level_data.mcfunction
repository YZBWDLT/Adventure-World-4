# ===== 获取章节数据 =====

## --- 正文 ---
## 利用background.level // 10获取
scoreboard players operation levelInChapter background = @e[name=level] background
scoreboard players set "10" temp 10
scoreboard players operation levelInChapter background /= "10" temp
scoreboard players operation levelInChapter background %= "10" temp

## --- 测试 ---
# function methods/title
# titleraw @a subtitle { "rawtext": [ { "translate": "%%s", "with": { "rawtext": [ { "score": {"name": "levelInChapter", "objective": "background" } } ] } } ] }