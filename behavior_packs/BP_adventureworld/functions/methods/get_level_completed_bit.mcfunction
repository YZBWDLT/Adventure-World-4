# ===== 获取章节数据 =====

## --- 正文 ---
## 利用background.level // 10获取
scoreboard players operation @e[name=isCompleted] background = @e[name=level] background
scoreboard players set "10" temp 10
scoreboard players operation @e[name=isCompleted] background %= "10" temp

## --- 测试 ---
# function methods/title
# titleraw @a subtitle { "rawtext": [ { "translate": "%%s", "with": { "rawtext": [ { "score": {"name": "@e[name=isCompleted]", "objective": "background" } } ] } } ] }