---
description: >-
  Coole Commands für Minecraft 1.21. All die hier vorgestellten Befehle
  funktionieren komplett ohne Mods oder Plugins, reines Vanilla Minecraft, es
  muss nichts weiter installiert werden.
---

# Coole Commands

### Wiederholende CmdB

#### Kletternder Schleim

```mcfunction
execute at @e[type=slime] run setblock ~ ~-1 ~ minecraft:slime_block
```

#### Feuer Ziege

brennt alles an, sich selbst auch ...

```mcfunction
execute at @e[type=goat] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace air
```

#### Schnellschuss Armbrust

```mcfunction
item replace entity @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] weapon.mainhand with crossbow[charged_projectiles=[{id:"minecraft:arrow",count:2}]]
```

#### TNT-Pfeil

```mcfunction
execute at @e[type=arrow,nbt={inGround:true}] run summon tnt ~ ~ ~
```

#### Zerstörer Schneeball

```mcfunction
execute at @e[type=snowball] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air
```

### Command Ketten

#### TNT-Pfeil eine Explosion

```mcfunction
tag @e[type=arrow,nbt={inGround:true}] add toExplode
execute at @e[tag=toExplode] run summon tnt ~ ~ ~
kill @e[tag=toExplode]
```

#### Hüpfender Block

```mcfunction
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:gravel"}}] at @s unless block ~ ~-0.5 ~ air run tag @s add toHop
execute at @e[tag=toHop] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:gravel"},Time:1,Motion:[0.0d,0.6d,0.3d]}
kill @e[tag=toHop]
```

### Command Ketten die Setup brauchen

#### Trichter für Spieler

Tichter teleportieren Spieler in die Richtung in die sie zeigen.\
Kessel teleportieren Spieler nach oben.

Initial:

```mcfunction
scoreboard objectives add playerhoppersneak minecraft.custom:minecraft.sneak_time
```

Dauernd:

```mcfunction
execute as @a[scores={playerhoppersneak=0}] at @s if block ~ ~ ~ hopper[facing=down] run tp @s ~ ~-0.9 ~
execute as @a[scores={playerhoppersneak=0}] at @s if block ~ ~ ~ hopper[facing=west] run tp @s ~-1 ~0.1 ~
execute as @a[scores={playerhoppersneak=0}] at @s if block ~ ~ ~ hopper[facing=east] run tp @s ~1 ~0.1 ~
execute as @a[scores={playerhoppersneak=0}] at @s if block ~ ~ ~ hopper[facing=north] run tp @s ~ ~0.1 ~-1
execute as @a[scores={playerhoppersneak=0}] at @s if block ~ ~ ~ hopper[facing=south] run tp @s ~ ~0.1 ~1
execute as @a[scores={playerhoppersneak=0}] at @s if block ~ ~ ~ minecraft:cauldron run tp @s ~ ~1.8 ~
scoreboard players set @a playerhoppersneak 0
```
