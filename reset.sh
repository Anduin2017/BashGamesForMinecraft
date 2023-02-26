
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

tmux send-keys -t mc "say 正在设置死亡惩罚丢失物品……" Enter
sleep 1
tmux send-keys -t mc "gamerule keepInventory false" Enter
sleep 1

tmux send-keys -t mc "say 正在给玩家增加血量上限……" Enter
sleep 1
tmux send-keys -t mc "execute as @a at @a run attribute @s minecraft:generic.max_health base set 40" Enter
tmux send-keys -t mc "effect clear @a" Enter
tmux send-keys -t mc "effect give @a minecraft:speed 300 3" Enter
tmux send-keys -t mc "effect give @a minecraft:haste 300 3" Enter
tmux send-keys -t mc "effect give @a minecraft:strength 300" Enter
tmux send-keys -t mc "effect give @a minecraft:instant_health 300" Enter
tmux send-keys -t mc "effect give @a minecraft:jump_boost 300 3" Enter
tmux send-keys -t mc "effect give @a minecraft:regeneration 300" Enter
tmux send-keys -t mc "effect give @a minecraft:resistance 300" Enter
tmux send-keys -t mc "effect give @a minecraft:fire_resistance 300" Enter
tmux send-keys -t mc "effect give @a minecraft:water_breathing 300" Enter
tmux send-keys -t mc "effect give @a minecraft:night_vision 300" Enter
tmux send-keys -t mc "effect give @a minecraft:health_boost 300" Enter
tmux send-keys -t mc "effect give @a minecraft:absorption 300" Enter
tmux send-keys -t mc "effect give @a minecraft:saturation 300" Enter
tmux send-keys -t mc "effect give @a minecraft:glowing 300" Enter
tmux send-keys -t mc "effect give @a minecraft:luck 300" Enter
tmux send-keys -t mc "effect give @a minecraft:slow_falling 300" Enter
tmux send-keys -t mc "effect give @a minecraft:conduit_power 300 3" Enter
tmux send-keys -t mc "effect give @a minecraft:dolphins_grace 300 3" Enter
tmux send-keys -t mc "effect give @a minecraft:hero_of_the_village 300" Enter
sleep 1

tmux send-keys -t mc "say 正在重新允许玩家睡觉……" Enter
sleep 1
tmux send-keys -t mc "gamerule playersSleepingPercentage 100" Enter
tmux send-keys -t mc "gamerule doDaylightCycle true" Enter
sleep 1

tmux send-keys -t mc "say 正在开启Web地图功能……" Enter
sudo ufw allow 8123

tmux send-keys -t mc "say 服务器已经成功设置为自由探索模式！" Enter