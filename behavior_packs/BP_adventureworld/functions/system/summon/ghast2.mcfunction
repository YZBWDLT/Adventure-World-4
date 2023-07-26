# 生成1级恶魂（讲真的，改这个注释有意义吗？又不是看不懂这点命令（乐
# 哦 应该是2级的 但我懒得改了
# 不知道为什么有写这段文字的功夫没有改1为2的功夫
# 明明用的是VSCode 操作很方便的说
summon minecraft:ghast "恶魂 | lv.2" ~~~
particle aw:summon_ghast_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1
effect @e[x=~,y=~,z=~,r=1,type=ghast] resistance 1000 0 true