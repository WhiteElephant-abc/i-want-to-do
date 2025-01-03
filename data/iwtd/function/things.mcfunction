#检测datapackets-functions-LIB数据包是否加载

#如果未加载：
execute unless score @r dfl_enable matches 1 run title @a times 0 70 20
execute unless score @r dfl_enable matches 1 run title @a title [{"text":"!!! ","color":"red","bold":true},{"type":"translatable","translate":"need.dfl.white.elephant.no","fallback":"缺少前置","color":"red","bold":true},{"text":" !!!","color":"red","bold":true}]
execute unless score @r dfl_enable matches 1 run title @a subtitle [{"type":"translatable","translate":"need.dfl.white.elephant.please.install","fallback":"请安装数据包：","color":"gray"},{"text":" datapackets functions LIB","color":"gray"}]
execute unless score @r dfl_enable matches 1 run return fail
title @a reset