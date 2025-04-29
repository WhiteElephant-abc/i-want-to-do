#检测datapackets-functions-LIB数据包是否加载

#如果未加载：
execute unless score @r dfl_enable matches 1 run tellraw @a[tag=!dfl_need] [{"type":"translatable","translate":"need.dfl.white.elephant.no","fallback":"缺少前置","color":"red","bold":true},{"text":" !","color":"red","bold":true}]
execute unless score @r dfl_enable matches 1 run tellraw @a[tag=!dfl_need] [{"type":"translatable","translate":"need.dfl.white.elephant.please.install","fallback":"请安装数据包:","color":"gray"},{"text":" datapackets functions LIB","color":"gray"}]
execute unless score @r dfl_enable matches 1 as @a[tag=!dfl_need] at @s run playsound entity.item.break player @s
execute unless score @r dfl_enable matches 1 as @a[tag=!dfl_need] at @s run playsound entity.villager.no player @s
execute unless score @r dfl_enable matches 1 run tag @a add dfl_need
execute unless score @r dfl_enable matches 1 run return fail