# 需要提前准备：
# 世界的中心（生存模式世界中心）
# 大本营坐标（玩家结束和开始前抵达的位置）
# 严肃室 （放满床的屋子）
# 缩圈中心点

tmux send-keys -t mc "say 服务器正在重置世界配置为自由模式……" Enter
sleep 1

tmux send-keys -t mc "say 正在重置世界宽度为7000……" Enter
sleep 1
tmux send-keys -t mc "worldborder set 7000" Enter
sleep 1

tmux send-keys -t mc "say 正在重置中心点……" Enter
sleep 1
tmux send-keys -t mc "worldborder center 594 -1527" Enter # 提前挑选好世界地图的中心。
sleep 1

tmux send-keys -t mc "say 正在重置成就点数显示……" Enter
sleep 1
tmux send-keys -t mc "scoreboard objectives setdisplay list bac_health" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay sidebar bac_advancements" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay belowName level" Enter
sleep 1

tmux send-keys -t mc "say 正在重置怪物量……" Enter
sleep 1
tmux send-keys -t mc "difficulty hard" Enter
sleep 1

tmux send-keys -t mc "say 正在重置复活点……" Enter
sleep 1
tmux send-keys -t mc "setworldspawn $center" Enter
sleep 1

tmux send-keys -t mc "say 正在重置复活范围为5000……" Enter
sleep 1
tmux send-keys -t mc "gamerule spawnRadius 5000" Enter
sleep 1

tmux send-keys -t mc "say 正在将玩家转移到大本营……" Enter
sleep 1
tmux send-keys -t mc "tp @a 1883 70 -3182" Enter # 提前修建好的生存模式大本营
sleep 1

tmux send-keys -t mc "say 正在将所有玩家的游戏模式设为生存模式……" Enter
sleep 1
tmux send-keys -t mc "gamemode survival @a" Enter
sleep 1

tmux send-keys -t mc "say 服务器已经成功设置为自由探索模式！" Enter

centerX="-701"
centerZ="-3558"
centerY="62"
# 提前确定中心点。不要告诉任何人。

sleep 20
tmux send-keys -t mc "say 服务器将在3分钟后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 60
tmux send-keys -t mc "say 服务器将在2分钟后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 60
tmux send-keys -t mc "say 服务器将在1分钟后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 10
tmux send-keys -t mc "say 服务器将在50秒后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 10
tmux send-keys -t mc "say 服务器将在40秒后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 10
tmux send-keys -t mc "say 服务器将在30秒后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 10
tmux send-keys -t mc "say 服务器将在20秒后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 10
tmux send-keys -t mc "say 服务器将在10秒后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 1
tmux send-keys -t mc "say 9秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 8秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 7秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 6秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 5秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 4秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 3秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 2秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 1秒后开始进行饥饿游戏比赛！" Enter
sleep 1
tmux send-keys -t mc "say 初始化饥饿游戏……" Enter
sleep 1

tmux send-keys -t mc "say 正在清空玩家物品……" Enter
sleep 2
tmux send-keys -t mc "clear @a" Enter
sleep 0.5

tmux send-keys -t mc "say 正在调整时间……" Enter
sleep 1
tmux send-keys -t mc "time set 23000" Enter # 凌晨
sleep 1

tmux send-keys -t mc "say 正在禁止玩家交互方块……" Enter
sleep 1
tmux send-keys -t mc "gamemode adventure @a" Enter
sleep 1

tmux send-keys -t mc "say 正在将所有玩家转移到严肃室。。。" Enter
sleep 3
tmux send-keys -t mc "tp @a 562 35 -1681" Enter # 提前修好一个放满床的严肃室。
sleep 1

tmux send-keys -t mc "say 正在宣读规则。。。" Enter
sleep 2
tmux send-keys -t mc "say 施惠国为了维持恐怖的统治制度以及镇压人民，他们有一个作为惩罚过去在第13区的起义及平息社会叛乱，以及用来瓦解地区的方法，每个行政区必须提供两个“贡品”— 通过抽签选定12至18岁的男孩和女孩各一人，投身于年度盛会。" Enter
sleep 5
tmux send-keys -t mc "say 每年必须在电视直播的《饥饿游戏》中竞争，他们必须在一个广阔舞台上战斗至死，唯一幸存者在最后将会获得名与利。" Enter
sleep 5
tmux send-keys -t mc "say 游戏开始后，玩家将会出生在一个随机位置。但是，这个位置并不安全，不但要躲避怪物、其它玩家的追杀，还要躲避逐渐缩小的圆圈。" Enter
sleep 5
tmux send-keys -t mc "say 圆圈一共会缩小六次。由最开始的3000，分别缩小为：2000，1200，700，400，100，20" Enter
sleep 5
tmux send-keys -t mc "say 如果玩家在游戏过程中死亡了，则可以复活到自己之前的存档床。如果玩家根本就没有制作床，那么将会复活到圈内随机位置。注意：每个玩家最多复活 3 次，第 4 次死亡就会淘汰。" Enter
sleep 5
tmux send-keys -t mc "say 最终没有被淘汰的 1 名玩家为胜者！获得丰厚奖励！" Enter
sleep 5
tmux send-keys -t mc "say 规则宣读完毕，祝大家好运。" Enter
sleep 3


tmux send-keys -t mc "say 请大家立刻在附近随意一张床上睡眠。" Enter
sleep 5
tmux send-keys -t mc "say 请大家立刻在床上睡眠一下！" Enter
sleep 5
tmux send-keys -t mc "say 最终确认：请大家立刻在床上睡眠一次！" Enter
tmux send-keys -t mc "give @a minecraft:cooked_beef 1024" Enter #给他们一些肉，让他们爽！
sleep 2

tmux send-keys -t mc "say 在20秒后比赛正式开始！请吃饱喝足。" Enter
sleep 10
tmux send-keys -t mc "say 在10秒后比赛正式开始！" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：9" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：8" Enter
sleep 1
tmux send-keys -t mc "say 距离比赛开始：7" Enter
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
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在设置怪物量……" Enter
tmux send-keys -t mc "difficulty easy" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在设置时间……" Enter
tmux send-keys -t mc "time set 23500" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在重置复活点……" Enter
tmux send-keys -t mc "setworldspawn $centerX $ceterY $centerZ" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在设置比赛复活范围……" Enter
tmux send-keys -t mc "gamerule spawnRadius 3000" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在设置比赛世界宽度……" Enter
tmux send-keys -t mc "worldborder set 3000" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在清空玩家物品……" Enter
tmux send-keys -t mc "clear @a" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在将玩家设置为生存模式……" Enter
tmux send-keys -t mc "gamemode survival @a" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在散布玩家……" Enter
tmux send-keys -t mc "spreadplayers $centerX $centerZ 300 1500 false @a" Enter
sleep 0.2
tmux send-keys -t mc "say 【开始比赛中】正在重置记分牌……" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay list level" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay belowName bac_health" Enter
tmux send-keys -t mc "scoreboard objectives remove dead_match " Enter
tmux send-keys -t mc "scoreboard objectives add dead_match deathCount \"死亡次数（四次淘汰）\"" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay sidebar dead_match" Enter
tmux send-keys -t mc "scoreboard players set @a dead_match 0" Enter
sleep 0.2
tmux send-keys -t mc "say 正在赠送物品……" Enter
tmux send-keys -t mc "give @a minecraft:water_bucket 1" Enter
tmux send-keys -t mc "give @a minecraft:blue_bed 1" Enter
tmux send-keys -t mc "give @a minecraft:dirt 64" Enter
tmux send-keys -t mc "give @a minecraft:oak_planks 32" Enter
tmux send-keys -t mc "give @a minecraft:stone 8" Enter
tmux send-keys -t mc "give @a minecraft:arrow 8" Enter
tmux send-keys -t mc "give @a minecraft:bone 16" Enter
tmux send-keys -t mc "give @a minecraft:iron_ore 1" Enter
tmux send-keys -t mc "give @a minecraft:beef 4" Enter
sleep 0.2

tmux send-keys -t mc "say 比赛开始！当前宽度：2000。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 290


tmux send-keys -t mc "say 目前世界宽度：3000。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去5分钟。开始缩小边界！新宽度：2000" Enter
tmux send-keys -t mc "worldborder add -1000 600" Enter
sleep 600
tmux send-keys -t mc "say 距离比赛开始已经过去15分钟。边界缩小结束！当前宽度：2000。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 290


tmux send-keys -t mc "say 目前世界宽度：2000。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去20分钟。开始缩小边界！新宽度：1200" Enter
tmux send-keys -t mc "worldborder add -800 180" Enter
sleep 180
tmux send-keys -t mc "say 距离比赛开始已经过去23分钟。边界缩小结束！当前宽度：1200。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 2
tmux send-keys -t mc "say 正在赠送物品……" Enter
tmux send-keys -t mc "give @a minecraft:water_bucket 1" Enter
tmux send-keys -t mc "give @a minecraft:dirt 32" Enter
tmux send-keys -t mc "give @a minecraft:oak_planks 16" Enter
tmux send-keys -t mc "give @a minecraft:stone 8" Enter
tmux send-keys -t mc "give @a minecraft:arrow 8" Enter
tmux send-keys -t mc "give @a minecraft:bone 16" Enter
tmux send-keys -t mc "give @a minecraft:iron_ore 4" Enter
tmux send-keys -t mc "give @a minecraft:beef 4" Enter
sleep 290


tmux send-keys -t mc "say 目前世界宽度：1200。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去28分钟。开始缩小边界！新宽度：700" Enter
tmux send-keys -t mc "worldborder add -500 180" Enter
sleep 180
tmux send-keys -t mc "say 距离比赛开始已经过去31分钟。边界缩小结束！当前宽度：700。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 290

tmux send-keys -t mc "say 目前世界宽度：700。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去36分钟。开始缩小边界！新宽度：400" Enter
tmux send-keys -t mc "worldborder add -300 120" Enter
sleep 120
tmux send-keys -t mc "say 距离比赛开始已经过去38分钟。边界缩小结束！当前宽度：400。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 290

tmux send-keys -t mc "say 目前世界宽度：400。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去43分钟。开始缩小边界！新宽度：100" Enter
tmux send-keys -t mc "worldborder add -300 120" Enter
sleep 120
tmux send-keys -t mc "say 距离比赛开始已经过去45分钟。边界缩小结束！当前宽度：100。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 290

tmux send-keys -t mc "say 目前世界宽度：100。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去50分钟。开始缩小边界！新宽度：20" Enter
tmux send-keys -t mc "worldborder add -80 15" Enter
sleep 15
tmux send-keys -t mc "say 距离比赛开始已经过去50分钟。边界缩小结束！当前宽度：20。" Enter
sleep 2
tmux send-keys -t mc "say 边界不会继续缩小。所有玩家必须决出胜负。" Enter
sleep 2
tmux send-keys -t mc "say 正在赠送物品……" Enter
tmux send-keys -t mc "give @a minecraft:water_bucket 1" Enter
tmux send-keys -t mc "give @a minecraft:dirt 16" Enter
tmux send-keys -t mc "give @a minecraft:oak_planks 8" Enter
tmux send-keys -t mc "give @a minecraft:stone 8" Enter
tmux send-keys -t mc "give @a minecraft:arrow 8" Enter
tmux send-keys -t mc "give @a minecraft:bone 16" Enter
tmux send-keys -t mc "give @a minecraft:iron_ore 8" Enter
tmux send-keys -t mc "give @a minecraft:beef 4" Enter
exit

# 脚本在这里退出了。不会再执行任何操作
# 让所有玩家决出胜负！
# 然后重新运行脚本的开头，即可把玩家都弄回家。