# Level 1: Der Ball für unser Spiel

Zuallererst benötigen wir einen passenden Ball. Er wird das Zentrum unseres Spiels sein. In Minecraft gibt es viele verschiedene "Dinge" - Blöcke, Pflanzen, Mobs. Wir haben uns für ein **Lebewesen** als Ball entschieden. Warum? Das erfährst du gleich...

![Starte die IDE und erstelle ein neues Objekt](<../.gitbook/assets/ide start.png>)

Du kannst neue Objekte über das "+"-Symbol hinzufügen. Wähle dann "Lebewesen" aus:

![Wähle "Lebewesen"](<../.gitbook/assets/lebewesen erstellen 0.png>)

Lebewesen sind "Entities", die sich anhand von Regeln bewegen, die du festlegen kannst.

Natürlich musst du einen Namen vergeben:

![Name des Lebewesens: "Flugball"](<../.gitbook/assets/lebewesen erstellen 1.png>)

Jetzt öffnet sich das Fenster, in dem du alle Eigenschaften des neu erstellten Lebewesens festlegen kannst. In der Bearbeitung eines Objekts gibt es verschiedene Kategorien (wählbar in der unteren Leiste).

Bei _Bild und Ton_ sind folgende Schritte wichtig für unseren Ball:

![Lebewesen - Bild und Ton anpassen](<../.gitbook/assets/lebewesen erstellen 2 bild ton.png>)

1. Der **Objektname** wird aus dem vorherigen Dialog übernommen.
2. Die Textur bestimmt das Aussehen deines Balls. Du fügst die Textur mit dem **+**-Symbol hinzu. Du kannst selbst eine Textur erstellen oder diese als Beispiel verwenden: [Textur herunterladen](https://raw.githubusercontent.com/KidsLabDe/alpaka\_ball\_oer/main/02-ball-erstellen/flugball-texture.png) ![ball textur](<../.gitbook/assets/flugball texture.png>)
3. Danach kannst du die Textur im Dropdown auswählen.
4. Wir lassen uns auch ein Spawn-Ei generieren.
5. Für das Ei können wir bei den 3 Punkten neben dem Farbfeld die Farben auswählen, die das Ei haben soll.
6. Zu jedem Attribut, das man hier auswählen kann, gibt es bei dem Fragezeichen einen Hilfetext.
7. Vergiss nicht, mit **Mod-Element speichern** zu speichern!

Nach dem Speichern dauert es eine Weile, bis MCreator die Mod daraus erstellt hat. Wenn das Play-Dreieck oben rechts grün leuchtet, kannst du mit dem Play-Dreieck Minecraft direkt mit der neuen Mod starten:

![Starte Minecraft mit deiner Mod: der Play-Knopf](<../.gitbook/assets/ide start play dreieck.png>)

{% hint style="info" %}
**Was passiert da im Hintergrund?**

Da passiert im Hintergrund eine Menge - unter **Konsole** kannst du dir anschauen, was MCreator alles tun muss, um die Mod zu kompilieren.&#x20;
{% endhint %}

Sobald Minecraft gestartet ist, erstelle eine Welt im [Kreativ-Modus](https://minecraft.fandom.com/de/wiki/Kreativmodus), um sofort auf alle Gegenstände zugreifen und den Ball am einfachsten testen zu können.

Das erstellte Spawn-Ei findest du im Kreativ-Inventar:

![Inventar: Hier findest du dein erstelltes Lebewesen, bzw. dessen Ei](<../.gitbook/assets/ingame wo ist das spawn ei.png>)

1. Wähle den Tab **"Verschiedenes"**.
2. Scrolle ganz nach unten.
3. Voilà! :)

{% hint style="success" %}
**Geschafft: Der Ball fliegt!**

Voilà! So sieht es bisher aus:

* Der Ball fällt nicht mehr, sondern fliegt.
* Der Ball bewegt sich nicht mehr von alleine.
* Der Ball stirbt nicht mehr, wenn man ihn schlägt. :)
{% endhint %}

## Verhalten anpassen

Nun wollen wir unserem Ball beibringen, sich wie ein Ball zu verhalten.

Schließe dazu Minecraft und kehre zu MCreator zurück. Du kannst ein Element durch Doppelklick erneut bearbeiten:

![Bearbeiten der Eigenschaften: Verhalten ändern](<../.gitbook/assets/ide start element bearbeiten.png>)

![Hier kannst du alles zum Verhalten anpassen](<../.gitbook/assets/lebewesen erstellen 2 verhalten.png>)

Um das Verhalten zu ändern, wechsle unten zum Verhaltens-Reiter. Jetzt kannst du die Werte anpassen:

* **creature**: Damit der Ball nicht angreift.
* **Bewegungsgeschwindigkeit**: 0, damit er nicht von alleine wegfliegt. Unser Ball soll nicht mehr sterben, wenn man ihn schlägt:
  * **Gesundheitswert**: 1024 (höchstmöglicher Wert, 2er-Potenz)
  * **Rüstungsschutz**: 100 (ebenfalls höchstmöglicher Wert)

{

}

{% hint style="success" %}
**Ball fertig - yeah!**

<img src="../.gitbook/assets/ingame so siehts bis jetzt aus 1.png" alt="Stand Level 1 - Bälle sind geschafft!" data-size="original">

* Der Ball fällt nicht mehr, sondern fliegt.
* Der Ball bewegt sich nicht mehr von alleine.
* Der Ball stirbt nicht mehr.
* Es macht bereits Spaß, den Ball mit Schwert und Bogen zu schubsen (die Verzauberungen "Schlag" oder "Rückstoß" helfen dabei ;D).
{% endhint %}
