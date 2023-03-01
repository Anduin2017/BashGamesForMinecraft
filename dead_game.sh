# 需要提前准备：
# 世界的中心（生存模式世界中心）
# 大本营坐标（玩家结束和开始前抵达的位置）
# 严肃室 （放满床的屋子）
# 缩圈中心点
./reset.sh

centerX="3891"
centerZ="-4043"
centerY="200"

tmux send-keys -t mc "say 服务器将在20秒后开始进行死斗游戏比赛！" Enter
sleep 10
tmux send-keys -t mc "say 服务器将在10秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 9秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 8秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 7秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 6秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 5秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 4秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 3秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 2秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 1秒后开始进行死斗游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 初始化死斗游戏……" Enter
sleep 1


tmux send-keys -t mc "say 正在关闭Web地图功能……" Enter
sudo ufw deny 8123
sleep 1

tmux send-keys -t mc "say 正在调整时间……" Enter
sleep 0.2
tmux send-keys -t mc "time set 2000" Enter # 凌晨
sleep 0.2

tmux send-keys -t mc "say 正在禁止玩家交互方块……" Enter
sleep 0.2
tmux send-keys -t mc "gamemode adventure @a" Enter
sleep 0.2

tmux send-keys -t mc "say 正在将所有玩家转移到严肃室。。。" Enter
sleep 0.2
tmux send-keys -t mc "tp @a 562 35 -1681" Enter # 提前修好一个放满床的严肃室。
sleep 0.2

tmux send-keys -t mc "say 正在禁用PVP。。。" Enter
sleep 0.2
tmux send-keys -t mc "effect give @a weakness 9999 255 true" Enter
sleep 0.2

tmux send-keys -t mc "say 正在宣读规则。。。" Enter
sleep 2
tmux send-keys -t mc "say 革命胜利，恐怖的施惠国已经被推翻，饥饿游戏被彻底结束了！" Enter
sleep 5
tmux send-keys -t mc "say 每个区再也不需要每年在电视直播的《死斗游戏》中竞争，战斗至死了。" Enter
sleep 5
tmux send-keys -t mc "say 为了纪念这场伟大的胜利，新施惠国决定用一个新的活动来庆祝革命成功：死斗游戏" Enter
sleep 6
tmux send-keys -t mc "say 游戏开局，玩家可以自由携带自己的东西，然后就会被散布在一个宽度150的正方形空间中，开始不停的战斗。" Enter
sleep 6
tmux send-keys -t mc "say 如果玩家在游戏过程中死亡了，则可以立即复活，没有惩罚。当然，完全也可以去前往地狱、末地。" Enter
sleep 6
tmux send-keys -t mc "say 在游戏结束时，杀敌人数最多的玩家可以获得胜利。" Enter
sleep 6
tmux send-keys -t mc "say 游戏累计耗时只有10分钟！时间到后立刻结束！" Enter
sleep 6
tmux send-keys -t mc "say 规则宣读完毕，祝大家好运。" Enter
sleep 3

tmux send-keys -t mc "tp @a 562 35 -1681" Enter # 提前修好一个放满床的严肃室。
sleep 3
tmux send-keys -t mc "say 请大家立刻在附近随意一张床上睡眠。" Enter
sleep 5
tmux send-keys -t mc "say 最终确认：请大家立刻在床上睡眠一次！" Enter
sleep 1
tmux send-keys -t mc "give @a minecraft:cooked_beef 64" Enter #给他们一些肉，让他们可以回血！
tmux send-keys -t mc "give @a minecraft:netherite_axe" Enter #给他们一些斧子，让他们砍人用！
tmux send-keys -t mc "give @a minecraft:netherite_boots" Enter #给他们一些牛逼的鞋，让他们穿着爽！
tmux send-keys -t mc "give @a minecraft:netherite_chestplate" Enter #给他们一些牛逼的甲，让他们穿着爽！
tmux send-keys -t mc "give @a minecraft:netherite_helmet" Enter #给他们一些牛逼的头盔，让他们穿着爽！
tmux send-keys -t mc "give @a minecraft:netherite_leggings" Enter #给他们一些裤子，让他们穿着爽！
tmux send-keys -t mc "give @a minecraft:dirt 128" Enter #给他们一些土，让他们磊堡垒用！
tmux send-keys -t mc "give @a minecraft:black_bed" Enter #给他们一些黑色的床，让他们存档自己的复活点用！
tmux send-keys -t mc "give @a minecraft:ender_pearl 6" Enter #给他们一些末影珍珠，让他们瞬移用！
tmux send-keys -t mc "give @a minecraft:chorus_fruit 8" Enter #给他们一些紫松果，让他们瞬移用！
tmux send-keys -t mc "give @a minecraft:crossbow 1" Enter #给他们一些弩，让他们阴人用！
tmux send-keys -t mc "give @a minecraft:bow" Enter #给他们一些弓，让他们远程进攻DPS！
tmux send-keys -t mc "give @a minecraft:cake" Enter #给他们一些蛋糕，让他们猛一波的时候吃！
tmux send-keys -t mc "give @a minecraft:arrow 32" Enter #给他们一些箭，让他们射个爽！
tmux send-keys -t mc "give @a minecraft:spectral_arrow 64" Enter #给他们一些光灵箭，让他们射的更爽！
tmux send-keys -t mc "give @a minecraft:golden_apple 3" Enter #给他们一些金苹果，让他们打一波的时候吃！
tmux send-keys -t mc "give @a minecraft:totem_of_undying 2" Enter #给他们一些不死图腾，让他们可以选择暂时不死！
tmux send-keys -t mc "give @a minecraft:lava_bucket 2" Enter #给他们一些岩浆桶，让他们坑人用！
tmux send-keys -t mc "give @a minecraft:water_bucket 1" Enter #给他们一些水桶，让他们坑人用！
tmux send-keys -t mc "give @a minecraft:tnt 5" Enter #给他们一些tnt，让他们炸别人用！
tmux send-keys -t mc "give @a minecraft:flint_and_steel 1" Enter #给他们一些打火机，让他们爽！
tmux send-keys -t mc "give @a minecraft:shield 1" Enter #给他们一些盾牌，让他们防止被射了！
tmux send-keys -t mc "give @a minecraft:spyglass 1" Enter #给他们一些八倍镜，让他们看！
tmux send-keys -t mc "give @a minecraft:cobweb 8" Enter #给他们一些蜘蛛网，让他们逃命的时候留屁股后面恶心人！

sleep 2

tmux send-keys -t mc "say 在7秒后比赛正式开始！" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：6" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：5" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：4" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：3" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：2" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：1" Enter
sleep 1

tmux send-keys -t mc "say 【开始比赛中】正在设置中心点……" Enter
tmux send-keys -t mc "worldborder center $centerX $centerZ" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在放置怪物……" Enter
tmux send-keys -t mc "difficulty easy" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置一个好天气……" Enter
tmux send-keys -t mc "weather clear" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置时间……" Enter
tmux send-keys -t mc "time set 0" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在重置复活点……" Enter
tmux send-keys -t mc "setworldspawn $centerX $ceterY $centerZ" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置比赛复活范围……" Enter
tmux send-keys -t mc "gamerule spawnRadius 140" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在禁止玩家睡觉……" Enter
tmux send-keys -t mc "gamerule playersSleepingPercentage 101" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置玩家的等级为 0 级……" Enter
tmux send-keys -t mc "experience set @a 0 levels" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置比赛世界宽度……" Enter
tmux send-keys -t mc "worldborder set 150" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在清空玩家特效。。。" Enter
tmux send-keys -t mc "effect clear @a" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在将玩家设置为生存模式……" Enter
tmux send-keys -t mc "gamemode survival @a" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在散布玩家……" Enter
tmux send-keys -t mc "spreadplayers $centerX $centerZ 10 75 false @a" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置死亡保持装备……" Enter
tmux send-keys -t mc "gamerule keepInventory true" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在重置记分牌……" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay list level" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay belowName bac_health" Enter
tmux send-keys -t mc "scoreboard objectives remove playerKillCount " Enter
tmux send-keys -t mc "scoreboard objectives add playerKillCount playerKillCount \"杀敌人数（最多获胜）\"" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay sidebar playerKillCount" Enter
tmux send-keys -t mc "scoreboard players set @a playerKillCount 0" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在设置玩家最大血量……" Enter
tmux send-keys -t mc "execute as @a at @a run attribute @s minecraft:generic.max_health base set 8" Enter
tmux send-keys -t mc "effect give @a minecraft:glowing 5 5" Enter
sleep 0.1


tmux send-keys -t mc "say 比赛已经正式开始！！" Enter
sleep 3
tmux send-keys -t mc "say 比赛时长：10分钟！杀敌最多获胜！" Enter
tmux send-keys -t mc "worldborder add -120 550" Enter
sleep 300
tmux send-keys -t mc "say 比赛剩余时长：5分钟！" Enter
tmux send-keys -t mc "weather clear" Enter
sleep 60
tmux send-keys -t mc "say 比赛剩余时长：4分钟！" Enter
sleep 60
tmux send-keys -t mc "say 比赛剩余时长：3分钟！" Enter
sleep 60
tmux send-keys -t mc "say 比赛剩余时长：2分钟！" Enter
sleep 60
tmux send-keys -t mc "say 比赛剩余时长：1分钟！" Enter
tmux send-keys -t mc "weather clear" Enter
sleep 30
tmux send-keys -t mc "say 比赛剩余时长：30秒！" Enter
sleep 10
tmux send-keys -t mc "say 比赛剩余时长：20秒！" Enter
sleep 10
tmux send-keys -t mc "say 比赛剩余时长：10秒！" Enter
sleep 10
tmux send-keys -t mc "say 比赛结束！!!!!!" Enter
sleep 3
tmux send-keys -t mc "say 比赛结束！!!!!!!!!!!!" Enter
sleep 3
# 脚本在这里退出了。不会再执行任何操作
# 让所有玩家决出胜负！
# 然后重新运行脚本的开头，即可把玩家都弄回家。
