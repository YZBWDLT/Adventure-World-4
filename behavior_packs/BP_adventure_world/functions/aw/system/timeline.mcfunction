# ===== 时间线控制器 =====
# 该函数仅当时间线启用后执行

# --- 需要启用的时间线文件 ---

## 开幕&村庄剧情
execute if score chapter data matches 0 run function aw/levels/open/timeline
## 正式关卡
execute if score chapter data matches 1 run function aw/levels/chapter1/timeline
execute if score chapter data matches 2 run function aw/levels/chapter2/timeline
execute if score chapter data matches 3 run function aw/levels/chapter3/timeline
execute if score chapter data matches 4 run function aw/levels/chapter4/timeline
execute if score chapter data matches 5 run function aw/levels/chapter5/timeline
execute if score chapter data matches 6 run function aw/levels/chapter6/timeline
execute if score chapter data matches 7 run function aw/levels/chapter7/timeline
## 结尾
execute if score chapter data matches 10 run function aw/levels/end/timeline

## 暂停
execute if score pausing data matches 1 run function aw/levels/pause/gaming

# --- 触发成就 ---

## (1) 无作弊，(2) 成就未获取，(3) 有玩家趴下，(4) 该玩家在棺材里，(5) 第 1~6 章 -> 让开，这里归我了！
execute if score hasCheat data matches 0 if score achievement.layInCoffin record matches 0 as @a at @s if entity @s[x=~,y=~0.5,z=~,dx=0,dy=0,dz=0] unless entity @s[x=~,y=~1.4,z=~,dx=0,dy=0,dz=0] if entity @s[x=-131,y=11,z=26,dz=2,dy=1] if score chapter data matches 1..6 run function aw/lib/achievements/levels/lay_in_coffin
## (1) 无作弊，(2) 成就未获取，(3) 位于(-137,-19,54)的红石灯亮起（踩中陷阱），(4) 第 2~6 章 -> 骷髅王的宝藏
execute if score hasCheat data matches 0 if score achievement.getTreasure record matches 0 if block -137 -19 54 lit_redstone_lamp if score chapter data matches 2..6 run function aw/lib/achievements/levels/get_treasure
## (1) 无作弊，(2) 成就未获取，(3) 位于(-175,-15,3)的诡异木按钮(方向参数：5)被按下，(4) 第 3~6 章 -> 躲这里不错
execute if score hasCheat data matches 0 if score achievement.findButton1 record matches 0 if block -175 -15 3 warped_button ["facing_direction"=5,"button_pressed_bit"=true] if score chapter data matches 3..6 run function aw/lib/achievements/levels/find_button_1
## (1) 无作弊，(2) 成就未获取，(3) 位于(-168,-8,94)的诡异木按钮(方向参数：2)被按下，(4) 第 7 章 -> 上房揭瓦
execute if score hasCheat data matches 0 if score achievement.findButton2 record matches 0 if block -168 -8 94 warped_button ["facing_direction"=2,"button_pressed_bit"=true] if score chapter data matches 7 run function aw/lib/achievements/levels/find_button_2
