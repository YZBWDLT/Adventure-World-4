# ===== 获取章节数据 =====

## --- 正文 ---
## 利用background.level // 100获取
scoreboard players operation chapter background = @e[name=level] background
scoreboard players set "100" temp 100
scoreboard players operation chapter background /= "100" temp

## --- 测试 ---
# function methods/title
# titleraw @a subtitle { "rawtext": [ { "translate": "%%s", "with": { "rawtext": [ { "score": {"name": "chapter", "objective": "background" } } ] } } ] }