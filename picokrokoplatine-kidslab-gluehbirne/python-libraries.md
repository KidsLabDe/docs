# Python Libraries

**Was sind Libraries?**

In (Circuit)Python sind Libraries spezielle Sammlungen von Code, die es einfacher machen, bestimmte Funktionen in deinen Projekten zu verwenden, ohne dass du alles von Grund auf neu schreiben musst. Stell dir eine Library vor wie ein Werkzeugkasten, der spezielle Werkzeuge für spezielle Aufgaben enthält, wie das Steuern von Sensoren, LEDs, Displays und vieles mehr.

**Warum braucht man Libraries?**

Libraries sind sehr nützlich, weil sie es einfacher machen, komplexe Dinge zu tun. Zum Beispiel, wenn du einen Temperatursensor auslesen möchtest, kannst du einfach eine Library verwenden, die jemand anderes geschrieben hat, der sich gut mit diesem Sensor auskennt.&#x20;

So musst du nicht verstehen, wie der Sensor auf tiefster Ebene funktioniert, sondern kannst einfach die Funktionen der Library nutzen, um die Temperatur zu bekommen.

**Wie installiert man Libraries auf dem Raspberry Pi Pico?**

1. **Libraries herunterladen:** Zuerst musst du die benötigten Libraries finden und herunterladen. Es gibt eine komplette Sammlung von den meisten Libraries direkt auf der Webseite von CircuitPython: [https://circuitpython.org/libraries](https://circuitpython.org/libraries)
   1. Lade die passende Datei herunter. Aktuell verwenden wir den Pico mit der Version 9 von CircuitPython: **Bundle for Version 9.x**
   2. Entpacke die ZIP Datei (Doppel-Klicken...)
2. **Auf den Raspberry Pi Pico kopieren:**
   * Verbinde deinen Raspberry Pi Pico mit deinem Computer über ein USB-Kabel. Der Pico erscheint als Wechseldatenträger, ähnlich wie ein USB-Stick, meistens mit dem Namen `CIRCUITPY`.
   * Gehe zu dem Ordner, in dem du die Libraries entpackt hast.
   * Wähle die Library oder Libraries, die du brauchst, und kopiere sie in den `lib`-Ordner auf deinem Pico. Wenn der `lib`-Ordner noch nicht existiert, kannst du ihn einfach selbst erstellen.
3. **Library im Code verwenden:**
   * Jetzt, wo die Library auf deinem Pico ist, kannst du sie in deinem Python-Skript verwenden. Dazu musst du die Library mit einem `import`-Befehl am Anfang deines Skripts einbinden. Zum Beispiel, wenn du eine Library namens `adafruit_lsm6ds` verwendest, würdest du `import adafruit_lsm6ds` am Anfang deines Codes schreiben.

{% hint style="info" %}
**Warum heißen die Dateien \*.mpy?**

Das `.mpy` Format bezeichnet "MicroPython Bytecode", das speziell für den Einsatz mit MicroPython und dessen Ableger, CircuitPython, entwickelt wurde. Dieses Format ist eine kompilierte Version von Python-Code, die auf Mikrocontrollern ausgeführt wird. Die Dateien sind kleiner und schneller!
{% endhint %}

## Ein Beispiel: Die LED-Animation-Library

Die LEDs auf der Platine hast du bisher auch über eine Library angesprochen:

```python
import neopixel
```

Den Regenbogen-Effekt hast du aber als Unterfunktion eingebaut, und die war gar nicht so einfach:

```python
def wheel(pos):
    # Input a value 0 to 255 to get a color value.
    # The colours are a transition r - g - b - back to r.
    if pos < 0 or pos > 255:
        r = g = b = 0
    elif pos < 85:
        r = int(pos * 3)
        g = int(255 - pos * 3)
        b = 0
    elif pos < 170:
        pos -= 85
        r = int(255 - pos * 3)
        g = 0
        b = int(pos * 3)
    else:
        pos -= 170
        r = 0
        g = int(pos * 3)
        b = int(255 - pos * 3)
    return (r, g, b) if ORDER in (neopixel.RGB, neopixel.GRB) else (r, g, b, 0)


def rainbow_cycle(wait):
    for j in range(255):
        for i in range(num_pixels):
            pixel_index = (i * 256 // num_pixels) + j
            pixels[i] = wheel(pixel_index & 255)
        pixels.show()
        time.sleep(wait)
```

Genau für sowas gibt es Libraries: wir nehmen jetzt die adafruit\_led\_animation-Library!

<figure><img src="../.gitbook/assets/grafik.png" alt=""><figcaption><p> Da sind gleich mehrere Dateien mit drin, sogar ein Unter-Ordner</p></figcaption></figure>

Kopiere den ganzen Ordner auf den Pico in den `lib` Ordner

```python
import time
import board
import neopixel

from adafruit_led_animation.animation.rainbow import Rainbow
from adafruit_led_animation.animation.rainbowcomet import RainbowComet

# Wo ist das Datenkabel der NeoPixel angeschlossen? Hinten auf dem Pico stehen die Namen drauf.
pixel_pin = board.GP12


# Wieviele "Pixel" oder Lämpchen hat der Streifen?
num_pixels = 4

pixels = neopixel.NeoPixel(
    pixel_pin,  # Wo ist angesteckt
    num_pixels,  # Die Anzahl der Pixel von oben
    brightness=0.2,  # Wie hell - 1 = 100%. Ist super hell... 20% (0.2) reichen meistens...
    auto_write=False,  # Wenn man was ändert, also die Farben setzt, muss man immer noch ein pixels.show() ausführen, damit die Änderungen auch ausgeführt werden. Das ist wichtig, wenn man viele pixel auf einmal ändert, sonst dauert es länger...
)



rainbow_comet = RainbowComet(pixels, speed=0.1, tail_length=7, bounce=True)
    
while True:
    rainbow_comet.animate()

```

Mehr Beispiele findest du hier:

{% embed url="https://learn.adafruit.com/circuitpython-led-animations/overview" %}
