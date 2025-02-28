---
description: >-
  Coole Commands für Minecraft 1.21. All die hier vorgestellten Befehle
  funktionieren komplett ohne Mods oder Plugins, reines Vanilla Minecraft, es
  muss nichts weiter installiert werden.
---

# Coole Commands

### Wiederholende CmdB

#### Highway / Rennbahn Glas
Wie dus aus TurtleCity kennst:
<figure><img src="../.gitbook/assets/highway.png" alt=""><figcaption></figcaption></figure>

```mcfunction
execute as @a at @s if block ~ ~-1 ~ minecraft:black_stained_glass run effect give @s minecraft:speed 1 10 true
```
wenn dus schneller magst kannst du statt der 10 auch andere speed boosts z.B. 20 aussuchen.
Statt schwarzem Glas (black_stained_glass) kannst au auch jeden anderen Block als auslöser wählen

#### Aufzug
Wie dus aus TurtleCity kennst:
<figure><img src="../.gitbook/assets/aufzug.png" alt=""><figcaption></figcaption></figure>
```mcfunction
execute as @a at @s if block ~ ~2 ~ minecraft:white_stained_glass run tp @s ~ ~1 ~
execute as @a at @s if block ~ ~ ~ minecraft:white_stained_glass if block ~ ~2 ~ air run tp ~ ~1 ~
```
auch hier kannst du selber wählen welchen Block du möchtest, nicht durchsichtige Blöcke geben dir jedoch schaden wenn du in ihnen stehst!

#### Kletternder Schleim
<figure><img src="../.gitbook/assets/schleim-treppen.png.png" alt=""><figcaption></figcaption></figure>

```mcfunction
execute at @e[type=slime] run setblock ~ ~-1 ~ minecraft:slime_block
```
Du kannst statt einem Schleimblock auch mal TNT verwenden xD

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
Ähnlich wie in diesem [Video](https://www.youtube.com/watch?v=aVSvQ1347Q0)

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
