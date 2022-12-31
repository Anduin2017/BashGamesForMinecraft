# 需要提前准备：
# 世界的中心（生存模式世界中心）
# 大本营坐标（玩家结束和开始前抵达的位置）
# 严肃室 （放满床的屋子）
# 缩圈中心点

tmux send-keys -t mc "say 服务器正在重置世界配置为自由模式……" Enter
sleep 1

tmux send-keys -t mc "say 正在重置世界宽度为14000……" Enter
sleep 1
tmux send-keys -t mc "worldborder set 14000" Enter
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
tmux send-keys -t mc "setworldspawn 594 64 -1527" Enter # 提前挑选好世界地图的中心。
sleep 1

tmux send-keys -t mc "say 正在重置玩家的复活点……" Enter
sleep 1
tmux send-keys -t mc "spawnpoint @a 1883 70 -3182" Enter # 提前修建好的生存模式大本营
sleep 1

tmux send-keys -t mc "say 正在重置复活范围为5000……" Enter
sleep 1
tmux send-keys -t mc "gamerule spawnRadius 5000" Enter
sleep 1

#tmux send-keys -t mc "say 正在将玩家转移到大本营……" Enter
#sleep 1
#tmux send-keys -t mc "tp @a 1883 70 -3182" Enter # 提前修建好的生存模式大本营
#sleep 1

tmux send-keys -t mc "say 正在将所有玩家的游戏模式设为生存模式……" Enter
sleep 1
tmux send-keys -t mc "gamemode survival @a" Enter
sleep 1

tmux send-keys -t mc "say 正在给玩家增加血量上限……" Enter
sleep 1
tmux send-keys -t mc "execute as @a at @a run attribute @s minecraft:generic.max_health base set 40" Enter
sleep 1

tmux send-keys -t mc "say 正在重新允许玩家睡觉……" Enter
sleep 1
tmux send-keys -t mc "gamerule playersSleepingPercentage 100" Enter
sleep 1

tmux send-keys -t mc "say 正在开启Web地图功能……" Enter
sudo ufw allow 8123

tmux send-keys -t mc "say 服务器已经成功设置为自由探索模式！" Enter

centerX="4212"
centerZ="-6183"
centerY="200"

# 提前确定中心点。不要告诉任何人。
sleep 20
tmux send-keys -t mc "say 服务器将在5分钟后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 60
tmux send-keys -t mc "say 服务器将在4分钟后开始进行饥饿游戏比赛！请脱下所有装备！" Enter
sleep 60
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


tmux send-keys -t mc "say 正在关闭Web地图功能……" Enter
sudo ufw deny 8123
sleep 1

tmux send-keys -t mc "say 正在调整时间……" Enter
sleep 1
tmux send-keys -t mc "time set 2000" Enter # 凌晨
sleep 1

tmux send-keys -t mc "say 正在禁止玩家交互方块……" Enter
sleep 1
tmux send-keys -t mc "gamemode adventure @a" Enter
sleep 1

tmux send-keys -t mc "say 正在将所有玩家转移到严肃室。。。" Enter
sleep 3
tmux send-keys -t mc "tp @a 562 35 -1681" Enter # 提前修好一个放满床的严肃室。
sleep 1

tmux send-keys -t mc "say 正在禁用PVP。。。" Enter
sleep 1
tmux send-keys -t mc "effect give @a weakness 9999 255 true" Enter
sleep 1

tmux send-keys -t mc "say 正在宣读规则。。。" Enter
sleep 2
tmux send-keys -t mc "say 施惠国为了维持恐怖的统治制度以及镇压人民，他们有一个作为惩罚过去在第13区的起义及平息社会叛乱，以及用来瓦解地区的方法，每个行政区必须提供两个“贡品”— 通过抽签选定12至18岁的男孩和女孩各一人，投身于年度盛会。" Enter
sleep 5
tmux send-keys -t mc "say 每年必须在电视直播的《饥饿游戏》中竞争，他们必须在一个广阔舞台上战斗至死，唯一幸存者在最后将会获得名与利。" Enter
sleep 5
tmux send-keys -t mc "say 游戏开始后，玩家将会出生在一个随机位置。但是，这个位置并不安全，不但要躲避怪物、其它玩家的追杀，还要躲避逐渐缩小的圆圈。" Enter
sleep 8
tmux send-keys -t mc "say 圆圈一共会缩小六次。由最开始的3000，分别缩小为：2000，1200，700，400，100，20" Enter
sleep 8
tmux send-keys -t mc "say 如果玩家在游戏过程中死亡了，则可以复活到自己之前的存档床。如果玩家根本就没有制作床，那么将会复活到圈内随机位置。注意：每个玩家最多复活 3 次，第 4 次死亡就会淘汰。" Enter
sleep 8
tmux send-keys -t mc "say 如果玩家在游戏过程中前往了末地或地狱，则迟早需要在主世界的胜者产生之前返回主世界，否则不会计入胜利条件。" Enter
sleep 8
tmux send-keys -t mc "say 最终没有被淘汰的活着站在主世界的那一名玩家为胜者！获得丰厚奖励！" Enter
sleep 8
tmux send-keys -t mc "say 规则宣读完毕，祝大家好运。" Enter
sleep 3

tmux send-keys -t mc "tp @a 562 35 -1681" Enter # 提前修好一个放满床的严肃室。
sleep 3
tmux send-keys -t mc "say 请大家立刻在附近随意一张床上睡眠。" Enter
sleep 5
tmux send-keys -t mc "say 请大家立刻在床上睡眠一下！" Enter
sleep 5
tmux send-keys -t mc "say 最终确认：请大家立刻在床上睡眠一次！" Enter
sleep 1
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
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置玩家最大血量……" Enter
tmux send-keys -t mc "execute as @a at @a run attribute @s minecraft:generic.max_health base set 20" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在清空怪物……" Enter
tmux send-keys -t mc "difficulty peaceful" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置一个好天气……" Enter
tmux send-keys -t mc "weather clear" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置时间……" Enter
tmux send-keys -t mc "time set 23500" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在重置复活点……" Enter
tmux send-keys -t mc "setworldspawn $centerX $ceterY $centerZ" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置比赛复活范围……" Enter
tmux send-keys -t mc "gamerule spawnRadius 3000" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在禁止玩家睡觉……" Enter
tmux send-keys -t mc "gamerule playersSleepingPercentage 101" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置玩家的等级为 0 级……" Enter
tmux send-keys -t mc "experience set @a 0 levels" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在设置比赛世界宽度……" Enter
tmux send-keys -t mc "worldborder set 3000" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在清空玩家物品……" Enter
tmux send-keys -t mc "clear @a" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在清空玩家特效。。。" Enter
tmux send-keys -t mc "effect clear @a" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在将玩家设置为生存模式……" Enter
tmux send-keys -t mc "gamemode survival @a" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在散布玩家……" Enter
tmux send-keys -t mc "spreadplayers $centerX $centerZ 300 1500 false @a" Enter
sleep 0.1
tmux send-keys -t mc "say 【开始比赛中】正在重置记分牌……" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay list level" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay belowName bac_health" Enter
tmux send-keys -t mc "scoreboard objectives remove dead_match " Enter
tmux send-keys -t mc "scoreboard objectives add dead_match deathCount \"死亡次数（四次淘汰）\"" Enter
tmux send-keys -t mc "scoreboard objectives setdisplay sidebar dead_match" Enter
tmux send-keys -t mc "scoreboard players set @a dead_match 0" Enter
sleep 0.2
tmux send-keys -t mc "say 正在赠送物品……" Enter
tmux send-keys -t mc "give @a minecraft:blue_bed 1" Enter
tmux send-keys -t mc "give @a minecraft:oak_planks 64" Enter
tmux send-keys -t mc "give @a minecraft:stone 8" Enter
tmux send-keys -t mc "give @a minecraft:arrow 8" Enter
tmux send-keys -t mc "give @a minecraft:bone 1" Enter
tmux send-keys -t mc "give @a minecraft:iron_ore 1" Enter
tmux send-keys -t mc "give @a minecraft:rotten_flesh 6" Enter
sleep 0.2

tmux send-keys -t mc "say 比赛已经正式开始！！当前宽度：2000。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 2
tmux send-keys -t mc "say 【提示】此时是早晨，不会有怪物！尽快获得衣服、食物和工具是要务！搜刮村庄也可能是个好方法。你也可以先盖一个小屋来保护自己。" Enter
sleep 50
tmux send-keys -t mc "say 【提示】留意服务器的提示语！这包括游戏技巧、建议和重要的缩圈新闻！这些信息非常重要。根据提示，合理安排时间和精力去搭配运营和战斗是你取得胜利的关键" Enter
sleep 50
tmux send-keys -t mc "say 【提示】使用E键来打开制作面板。制作工作台和基础装备，包括：剑、镐、斧、锹等。铁在这个游戏中算是比较珍贵可靠的装备。没有铁的时候可以先用石头凑合。木制装备则是最差的。" Enter
sleep 50
tmux send-keys -t mc "say 【提示】别忘了造个炉子来炼铁，并且把生肉烧成熟肉，这可以让肉提供更多的能量。制造一个炉子需要一些圆石，用镐子来开采圆石吧！木镐或石镐都可以，石镐会快许多，但是需要圆石和木棍来制作石镐！" Enter
sleep 50
tmux send-keys -t mc "say 【提示】在没有缩圈的时候，挖矿可以得到优势。尽快挖到一些铁，这样来制作铁剑和盾牌。小心！尽量挖裸露的矿，避免在挖矿时被圈毒死。" Enter
sleep 90


tmux send-keys -t mc "say 目前世界宽度：3000。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去5分钟。开始缩小边界！新宽度：2000" Enter
tmux send-keys -t mc "worldborder add -1000 600" Enter
sleep 100
tmux send-keys -t mc "say 【提示】没看到毒圈？毒圈的渲染和游戏的设置有关。但往往当你真的看到毒圈的时候，你已经需要赶快离开这里了。毒圈会持续给你造成大量伤害！" Enter
sleep 50
tmux send-keys -t mc "say 【提示】游戏的夜晚非常危险！谨慎暴露在室外。选择去一个村庄或是盖一个房子可以保护自己。实在不行还可以单纯的把自己垫高或是挖下两格藏好。" Enter
sleep 150
tmux send-keys -t mc "say 【提示】使用自己的床，或村民的床，可以避免死后复活的太远而捡不到自己的装备。在游戏的中期可以降低死亡带来的惩罚，非常有用。" Enter
sleep 150
tmux send-keys -t mc "say 【提示】在靠近世界的边界，也就是圈的时候，你会看到红色的墙。贴近红色的墙会以极高的速度扣除你的血量！时刻检查自己是否靠近圈了！" Enter
sleep 150
tmux send-keys -t mc "say 距离比赛开始已经过去15分钟。边界缩小结束！当前宽度：2000。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。但是地图上将会出现怪物。" Enter
sleep 2
tmux send-keys -t mc "difficulty easy" Enter
sleep 2
sleep 25
tmux send-keys -t mc "say 【提示】如果你制作了一个指南针，那么指南针将会始终指向世界的中心！这会给你带来巨大的导航优势！制作指南针只需要红石和铁即可！" Enter
sleep 25
tmux send-keys -t mc "say 【提示】没用的物品要即时丢掉！一般来说，树种、鸡蛋、可可豆等用处都不大。不过，怪物掉落的物品往往都非常有用，例如线可以制作弓，羽毛可以制作箭，骨头可以驯服狼。" Enter
sleep 50
tmux send-keys -t mc "say 【提示】或许你想拥有一些高级装备。相比挖矿，直接去翻翻村庄里的箱子可能更实用。小心途径的怪物和玩家！时刻用床来保持自己的复活位置！" Enter
sleep 50
tmux send-keys -t mc "say 【提示】如果圈缩完了以后，你的床在圈外，那么床的功能将会消失！你仍然会复活在随机位置！请始终确保你有一个圈内的床在附近！" Enter
sleep 50
tmux send-keys -t mc "say 【提示】完成一些游戏内的成就会获得一些奖励物品，例如钻石、绿宝石。这一点对于刚刚进入服务器的玩家来说可以得到优势。" Enter
sleep 90


tmux send-keys -t mc "say 目前世界宽度：2000。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去20分钟。开始缩小边界！新宽度：1200" Enter
tmux send-keys -t mc "worldborder add -800 180" Enter
sleep 45
tmux send-keys -t mc "say 【提示】圈的缩小速度和你的跑步速度差不多。但是划船就能远远超过这个速度。走水路可以躲开毒圈，但是要小心溺尸！" Enter
sleep 45
tmux send-keys -t mc "say 【提示】很快晚上就会出现怪物。在白天的时间专注于探索野外和赶路。在晚上的时间专注于保护自己、探索村庄、划船，都是不错的安排。" Enter
sleep 45
tmux send-keys -t mc "say 【提示】制作一个水桶！在从高处落下的同时，将水桶里的水洒在地面上可以避免伤害。高端玩家往往都知道这个技巧来让自己赶路更流畅。" Enter
sleep 45
tmux send-keys -t mc "say 距离比赛开始已经过去23分钟。边界缩小结束！当前宽度：1200。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 2
tmux send-keys -t mc "say 正在赠送物品……红石、泥土、木板、石头、箭、骨头、铁、牛肉" Enter
tmux send-keys -t mc "give @a minecraft:redstone 1" Enter
tmux send-keys -t mc "give @a minecraft:dirt 32" Enter
tmux send-keys -t mc "give @a minecraft:oak_planks 16" Enter
tmux send-keys -t mc "give @a minecraft:stone 8" Enter
tmux send-keys -t mc "give @a minecraft:arrow 8" Enter
tmux send-keys -t mc "give @a minecraft:bone 16" Enter
tmux send-keys -t mc "give @a minecraft:iron_ore 4" Enter
tmux send-keys -t mc "give @a minecraft:beef 4" Enter
sleep 100
tmux send-keys -t mc "say 【提示】按住Tab键可以查看玩家的等级。这往往意味着他们发展的情况。小心那些高等级的玩家！他们不但装备丰富，游戏经验也往往更多。" Enter
sleep 145
tmux send-keys -t mc "say 【提示】杀死蜘蛛可以制作弓。当然你也可以去击杀骷髅来试图抢到一把弓。" Enter
sleep 0.1
sleep 45


tmux send-keys -t mc "say 目前世界宽度：1200。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去28分钟。开始缩小边界！新宽度：700" Enter
tmux send-keys -t mc "worldborder add -500 180" Enter
sleep 90
tmux send-keys -t mc "say 【提示】如果你能找到村庄，或许你可以试试不停杀死那里的铁傀儡，从而得到一些铁，制作最重要的装备！" Enter
sleep 90
tmux send-keys -t mc "say 距离比赛开始已经过去31分钟。边界缩小结束！当前宽度：700。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 100
tmux send-keys -t mc "say 【提示】靠近一名玩家，你会看到他的ID和剩余血量悬浮在他的头顶上方。这个信息在战斗中非常重要！" Enter
sleep 100
tmux send-keys -t mc "say 【提示】如果你被杀的身无分文，别担心！村庄往往是能让人暴富的地方。赌一把找个村庄搜刮一下试试吧！" Enter
sleep 90

tmux send-keys -t mc "say 目前世界宽度：700。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去36分钟。开始缩小边界！新宽度：400" Enter
tmux send-keys -t mc "worldborder add -300 120" Enter
sleep 60
tmux send-keys -t mc "say 【提示】对于高手来说，他们会观察毒圈的位置和服务器的宽度信息，计算自己走了多少格，就能直接确定世界的中心位置从而建立优势！" Enter
sleep 60
tmux send-keys -t mc "say 距离比赛开始已经过去38分钟。边界缩小结束！当前宽度：400。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 100
tmux send-keys -t mc "say 【提示】生存游戏的核心宗旨是活下去而不是杀人。杀死别的玩家可以抢走他们的物资，但自己也容易死。死亡三次就会出局！" Enter
sleep 100
tmux send-keys -t mc "say 【提示】试图给其它玩家发送一些友善的表情和物资来和他们结盟？不过，小心，胜利者只有一个，玩家之间往往会充满尔虞我诈。他可能是骗你失去警觉：所谓的友好盟友都随时可能倒戈相向！" Enter
sleep 90

tmux send-keys -t mc "say 目前世界宽度：400。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去43分钟。开始缩小边界！新宽度：100" Enter
tmux send-keys -t mc "worldborder add -300 120" Enter
sleep 120
tmux send-keys -t mc "say 距离比赛开始已经过去45分钟。边界缩小结束！当前宽度：100。" Enter
sleep 2
tmux send-keys -t mc "say 距离下次边界缩小还有5分钟。" Enter
sleep 50
tmux send-keys -t mc "say 【提示】游戏过程中，一共会赠送3次物品。这些物品往往能够让劣势的玩家重新获得翻盘的机会。但小心！它们可能会撑爆你的背包！提前清理出至少8个空位，扔掉没用的物品！" Enter
sleep 50
tmux send-keys -t mc "say 【提示】击杀苦力怕，获得火药，或许可以制作一些TNT，用来在游戏末期在圈中心制作陷阱来炸死其余的玩家。" Enter
sleep 100
tmux send-keys -t mc "say 【提示】按照游戏规则，如果有玩家去了地狱或是末地，则他们必须返回主世界，冠军只会在主世界产生！" Enter
sleep 90

tmux send-keys -t mc "say 目前世界宽度：100。10秒后开始缩小边界。" Enter
sleep 10
tmux send-keys -t mc "say 距离比赛开始已经过去50分钟。开始缩小边界！新宽度：20" Enter
tmux send-keys -t mc "worldborder add -80 40" Enter
sleep 40
tmux send-keys -t mc "say 距离比赛开始已经过去50分钟。边界缩小结束！当前宽度：20。" Enter
sleep 2
tmux send-keys -t mc "say 所有玩家必须决出胜负！" Enter
sleep 2
tmux send-keys -t mc "say 正在赠送物品……" Enter
tmux send-keys -t mc "give @a minecraft:oak_planks 64" Enter
tmux send-keys -t mc "give @a minecraft:cobblestone 64" Enter
tmux send-keys -t mc "give @a minecraft:stone_sword 1" Enter
tmux send-keys -t mc "give @a minecraft:lava_buket 1" Enter
tmux send-keys -t mc "give @a minecraft:bow 1" Enter
tmux send-keys -t mc "give @a minecraft:arrow 3" Enter
tmux send-keys -t mc "give @a minecraft:iron_ore 16" Enter
tmux send-keys -t mc "give @a minecraft:cooked_beef 16" Enter
tmux send-keys -t mc "say 【提示】实在不知道如何取胜？别忘了，这是一款开源的游戏。切出来开个网页阅读它的源码可以让你找到线索来翻盘哦： https://git.aiursoft.cn/Anduin" Enter
tmux send-keys -t mc "difficulty hard" Enter
sleep 100

tmux send-keys -t mc "say 正在赠送物品……" Enter
tmux send-keys -t mc "give @a minecraft:obsidian 12" Enter
tmux send-keys -t mc "give @a minecraft:bow 1" Enter
tmux send-keys -t mc "give @a minecraft:arrow 3" Enter
tmux send-keys -t mc "give @a minecraft:iron_ore 16" Enter
tmux send-keys -t mc "give @a minecraft:cooked_beef 16" Enter
tmux send-keys -t mc "give @a minecraft:flint_and_steel 1" Enter
tmux send-keys -t mc "worldborder add -12 300" Enter
exit

# 脚本在这里退出了。不会再执行任何操作
# 让所有玩家决出胜负！
# 然后重新运行脚本的开头，即可把玩家都弄回家。
