# ===== 主函数 =====

# --- 变量准备 ---
## 计时器
function system/timer
## 其他的变量准备
function system/get_variables

# --- 防退出与防作弊 ---

## 防退出 | 防止重新进入的玩家扰乱系统运行，进行必要设置
function system/antileave
## 防作弊 | 检测到玩家开启创造后则降级评分为F-
function system/anticheating

# --- 控制器 ---

## 音效控制器 | 激活且倒计时为0时执行
execute if score sound active matches 1.. if score sound time matches 0 run function system/controller/sound
## 玩家死亡机制 | 控制死亡榜和玩家死亡后运行的命令
function system/controller/player_die
## 物品控制器 | 控制物品的上限、补充、附魔与耐久修复，每秒运行一次
execute if score tick time matches 1 run function system/controller/items
## 药水控制器 | 控制药水的药效、上限和补充，每秒运行一次
execute if score tick time matches 2 run function system/controller/potions
## 箭控制器 | 控制箭的上限和补充，每秒运行一次
execute if score tick time matches 3 run function system/controller/arrows
## 事件控制器 | 控制杂项内容的执行
function system/controller/events

# --- 关卡 ---
## 时间线
execute if score timeline active matches 1.. run function system/controller/timeline
## 快捷栏
function system/controller/infoboard

# --- 开发者模式下的更改游戏模式 ---
execute if score developerMode settings matches 1 run function lib/modify_data/developer_gamemode
