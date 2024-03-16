# 第3章气泡控制器

## 第2章之前，不显示气泡

## 第3章到第6章时，显示气泡
### 第3章时，气泡常显示
execute @e[name=level,scores={data=300..399}] ~~~ particle aw:bubble_bottom -176 -24 24
execute @e[name=level,scores={data=300..399}] ~~~ particle aw:bubble_top -173 5 23

### 第4-6章时，气泡只在未游玩状态下显示
### 因缺少判断能检测是否存在（execute unless）游玩状态的玩家（其实只是单纯的懒），所以就直接列举所有关卡完成后的关卡代码了
execute @e[name=level,scores={data=!410..412,data=!420..422,data=!430..433,data=!440,data=!610..611,data=!620..622,data=!630..633,data=!640..699,data=400..699}] ~~~ particle aw:bubble_bottom -176 -24 24
execute @e[name=level,scores={data=!410..412,data=!420..422,data=!430..433,data=!440,data=!610..611,data=!620..622,data=!630..633,data=!640..699,data=400..699}] ~~~ particle aw:bubble_top -173 5 23

## 第7章时，因无法回到第3章所以不显示气泡