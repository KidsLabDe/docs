# Befehle auf TurtleCity 2 

## general
### init
```mcfunction
# Damit die Commandblocks an der clock nicht den chat zu spamen:
## alle befehle (z.b. blöcke von clock plaziert)
/gamerule commandBlockOutput false
## "Dein Spielmodus wurde geändert" nachricht
/gamerule sendCommandFeedback false

# damit man inventar nicht verliert 
/gamerule keepInventory true
```
### clock
```mcfunction
# oben
fill ~-20 ~-1 ~ ~ ~-1 ~ redstone_block
# unten
fill ~-20 ~1 ~ ~ ~1 ~ air
```

## admin status für ausnahmen
### init
```mcfunction
/scoreboard objectives add isadmin dummy
```
### clock
```mcfunction
# dass jeder auf isadmin getestet werden kann
scoreboard players add @a isadmin 0
```

## on rejoin
- teleport to spawn
### init
```mcfunction
/scoreboard objectives add joined stat.leaveGame
```
### clock
```mcfunction
tp @a[score_joined_min=1] -247 66 -198
scoreboard players set @a joined 0
```

## on respawn
- give turtle remote
### init
```mcfunction
/scoreboard objectives add died stat.deaths
```
```mcfunction
give @a[score_died_min=1] computercraftedu:turtleRemote
scoreboard players set @a died 0
```



## highway
hellgrau, grau und schwarz = 3 verschiedene speeds  
weiß teleportiert nach oben = aufzug  
schwarz gibt auch noch resistenz  
### clock
```mcfunction
# speed
/execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 15 effect @p speed 1 110 true
# kein schaden beim fallen
/execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 15 effect @p[r=1] resistance 4 100 true
# halbe highways
## grau
execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 7 effect @p speed 1 60 true
## hellgrau
execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 effect @p speed 1 10 true


# aufzug
## normal
/execute @a ~ ~ ~ detect ~ ~2 ~ minecraft:stained_glass 0 tp @p ~ ~1 ~
## sonderfall ganz oben
/execute @a ~ ~ ~ detect ~ ~1 ~ minecraft:stained_glass 0 execute @p ~ ~ ~ detect ~ ~2 ~ air 0 tp @p ~ ~1 ~
```

## gamemode wechslen
### init
- isadmin scoreboard erstellen in general
- markierung für adventure mode platzieren:  
    auf höhe 0 "customnpcs:npcPlaceholder 9" setzen
    worldedit: `//set customnpcs:npcPlaceholder:9`

### clock
```mcfunction
execute @a[score_isadmin=0,m=!1] ~ ~ ~ detect ~ 0 ~ customnpcs:npcPlaceholder 9 gamemode adventure @p
execute @a[score_isadmin=0] ~ ~ ~ detect ~ 0 ~ bedrock 0 gamemode survival @p
```

## karotte für zuschauermodus
### init
- isadmin scoreboard erstellen in general

```mcfunction
/scoreboard objectives add use_carrotstick stat.useItem.minecraft.carrot_on_a_stick
```

### clock
```mcfunction
gamemode 3 @a[score_isadmin_min=1,score_use_carrotstick_min=1]
scoreboard players set @a[score_use_carrotstick_min=1] use_carrotstick 0
gamemode 1 @a[score_isadmin_min=1,m=3,rxm=-90,rx=-90]
```


