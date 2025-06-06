# ===== HUD 控制 =====
# 当 data.allowHud = 0 时，隐藏 HUD；否则，启用 HUD。
# 调用此方法时：无需修饰。

execute if score allowHud data matches 0 run hud @a hide all
execute if score allowHud data matches 1 run hud @a reset all
