# Vorbereitung: Ein neues Projekt in MCreator erstellen

Um loszulegen, öffne zuerst MCreator. Unabhängig von deinem Betriebssystem (Windows, macOS oder Linux) ist MCreator eine normale Anwendung, die wie jede andere gestartet werden kann.

Als erstes erstellst du nun ein neues Projekt:

![Neues Projekt erstellen - Schritt 1](<../.gitbook/assets/projekt anlegen 0.png>)

![Neues Projekt erstellen - Schritt 2](<../.gitbook/assets/projekt anlegen 1.png>)

Nun füllst du folgende Felder aus:

* **Mod-Anzeigename** - Wie möchtest du deine Mod nennen?
* **Mod-ID** - Interner Name (ohne Leerzeichen oder Sonderzeichen)
* **Minecraft-Version** - Mods müssen zur Minecraft-Version passen. Für dieses Tutorial wähle bitte "Minecraft Forge for 1.19.2".

Klicke dann auf "Neue Arbeitsumgebung erstellen". Es öffnet sich eine Webseite, die um eine Spende bittet.

Der Download und der erste Build können je nach Internetverbindung und Computer etwas Zeit in Anspruch nehmen. Dieser Schritt nimmt jedoch viele Aufgaben ab, die wir sonst manuell erledigen müssten. Also, geduldig warten :)

{% hint style="warning" %}
**Dauert es zu lange?**

Manchmal sieht es so aus, als ob der Vorgang ewig dauert, obwohl er bereits abgeschlossen ist. Wenn du eine Erfolgsmeldung in der Konsole siehst und nichts mehr passiert, kannst du das Popup-Fenster schließen, und alles sollte bereits installiert sein.
{% endhint %}

## Übersicht über die Entwicklungsumgebung (IDE)

{% hint style="info" %}
**IDE. . . was ist das?**

[IDE](https://de.wikipedia.org/wiki/Integrierte\_Entwicklungsumgebung) steht für _Integrierte Entwicklungsumgebung_ und ist ein Programm, das alle erforderlichen Tools für das Programmieren in einer einzigen Umgebung zusammenführt. Das ist unsere Arbeitsumgebung für dieses Tutorial.
{% endhint %}

Hier siehst du die Startseite der IDE und alle wichtigen Elemente:

![Übersicht der IDE: Die wichtigsten Elemente](<../.gitbook/assets/ide uebersicht.png>)

1. Mit dem + Symbol kannst du neue Elemente erstellen, z.B. Blöcke, Tiere, oder Gegenstände.
2. In dieser Leiste siehst du, welche Elemente gerade zur Bearbeitung geöffnet sind.
3. Im großen, noch leeren Bereich bekommst du eine Übersicht über alle erstellten Elemente.
4. Hier sind einige Schaltflächen wichtig:
   * Wenn Symbole ausgegraut sind, können sie derzeit nicht verwendet werden.
   * Das grüne Dreieck startet Minecraft mit der neu erstellten Mod.
   * Das rote Viereck stoppt aktuelle Vorgänge, z.B. wenn Minecraft bereits gestartet ist.
   * Die orangefarbene Datei mit dem Pfeil exportiert die Mod für die Verwendung mit anderen Mod-Launchern.
5. Hier kannst du Variablen erstellen.

## Nützliche Einstellungen im Spiel

Wenn du in Minecraft längere Bauarbeiten durchführst, können einige Einstellungen hilfreich sein. Dazu gibt es Befehle in Minecraft. Um einen Befehl auszuführen, öffne das Spiel mit `T`, um den Chat zu öffnen, und gib `/` gefolgt von dem gewünschten Befehl ein.

* Zeit auf Tag setzen und auf Tag belassen:\
  `/time set day` & `/gamerule doDaylightCycle false`
* Wetter auf klaren Himmel setzen und Wetter so belassen:\
  `/weather clear` & `/gamerule doWeatherCycle false`

{% hint style="info" %}
**Minecraft Wiki**

Es gibt noch viele weitere nützliche `gamerule`s. Hier findest du eine Liste: [Minecraft Wiki Gamerules](https://minecraft.fandom.com/wiki/Game\_rule)
{% endhint %}
