---
description: >-
  Der Adafruit Gemma M0 ist ein sehr kleiner und einfaches Board - besonders
  geeignet für Wearable-Projekte
cover: ../.gitbook/assets/gemma.jpg
coverY: 0
---

# Gemma M0

## Übersicht

## Programmieren mit MakeCode

Ein großer Vorteil ist, dass man den Gemma M0 ganz einfach mit MakeCode, der grafischen Progriammieroberfläche von Microsoft, programmieren kann.

{% hint style="info" %}
Benutze MakeCode am besten mit dem Chrome Browser - damit kannst du die Programmierung direkt auf den Gemma übertragen, ohne vorher die U2F Datei mit dem Dateimanager kopieren zu müssen.
{% endhint %}

1. Gemma per USB anschließen
2. [https://maker.makecode.com/#editor](https://maker.makecode.com/#editor)
3. "Gemma M0" auswählen
4. ![](../.gitbook/assets/Gemma-Makecode-Connection.png)
5. Druck auf "Reset" wechselt zwischen Upload- und Running-Mode
6. ![](../.gitbook/assets/gemma.jpg)



## NeoPixel / WS1820B Anschließen

![](../.gitbook/assets/maker-GemmaLED.png)

* Signal unbedingt an D1 / A0
* ![](<../.gitbook/assets/MakeCode Maker - Blocks  Javascript editor 2023-03-11 14-09-13.png>)



### Musik über Piezo Element

* Piezo an GND (Schwarz) und A2 (Rot) anschließen
* ![](<../.gitbook/assets/MakeCode Maker - Blocks  Javascript editor 2023-03-11 14-08-39.png>)
