# Level 5: Die Alpaka-Ball-Schläger

Stell dir vor, du spielst Eishockey, Golf oder Tennis - ohne Schläger. Hört sich komisch an, oder? Also brauchen wir noch den passenden Schläger: Da macht das Spiel noch mehr Spaß!

## Erstelle einen neuen **Gegenstand**

* Wechsle zum Arbeitsplatz
* Klicke auf "+" und wähle "Gegenstand" aus

![Gegenstand erstellen](<../.gitbook/assets/gegenstand erstellen.png>)

Der neue Gegenstand braucht natürlich einen Namen - "Schlaeger" zum Beispiel.

{% hint style="info" %}
**Umlaute und Programmieren**

Probier mal den Schläger auch so zu nennen mit Ä statt AE. Wenn du den Gegenstand angelegt hast, fällt dir vielleicht auf, dass er dann in MCreator "Schlager" heißt. Schlager? Komisch!

Das liegt daran, das Computer an ganz vielen Stellen noch nicht mit Umlauten und erweiterten Zeichen wie Emoticons oder anderen Schriftarten umgehen können. Darum macht MCreator automatisch aus dem **Ä** ein **A**. Darum haben wir uns gleich für den Namen Schl**ae**ger entschieden.
{% endhint %}

### Textur für den Schläger pixeln

![Dem Gegenstand eine Textur hinzufügen](<../.gitbook/assets/gegenstand textur erstellen.png>)\
![Wir malen einen Schläger. Kannst du besser? Will ich sehen!](<../.gitbook/assets/gegenstand pixeln.png>)

1. Wähle das Zeichentool aus
2. Wähle eine Farbe aus
3. Speichere es als **Gegenstandtextur**!\
   Dann wähle beim Gegenstand die gerade erstellte Textur aus.

### Eigenschaften des Schlägers

Jetzt müssen wir noch die Eigenschaften des Schlägers bearbeiten, damit auch alles so ist, wie wir das von einem Schläger erwarten. Wechsel dazu zu den _Eigenschaften_.

![Gegenstand Eigenschaften](<../.gitbook/assets/gegenstand eigenschaften.png>)

Als Inventar-Tab haben wir _Tools_ ausgewählt, damit es bei den anderen Werkzeugen im Inventar auftaucht.

### Rückstoß

Der Schläger soll besondere Eigenschaften bekommen, wie ein echter Sport-Schläger. Da es aber in den normalen Eigenschaften keine Einstellung dafür gibt, wie viel Rückstoß der Schläger haben soll, behelfen wir uns anders.

Die Auslöser kann man nutzen, um auf Ereignisse im Spiel zu reagieren. Du nutzt jetzt einen neuen Auslöser, der immer läuft, wenn man ihn in der Hand hält:

![Auslöser für den Schläger - Bei jedem Tick](../.gitbook/assets/ausloeser.png)

Um den Rückschlag zu erstellen, "verzaubern" wir den Schläger einfach. Der Auslöser läuft "immer", solange ein Spieler den Schläger in der Hand hat. Deswegen musst du etwas mehr programmieren:

![Code zum Verzaubern des Schlägers](<../.gitbook/assets/code in hand verzaubern.png>)

1. Überprüfe, ob der Gegenstand noch nicht verzaubert ist - sonst würde er jeden Tick neu verzaubert werden.
2. Dazu verneinen wir die Antwort auf die Frage _Ist Gegebener Gegenstandsstapel verzaubert_. Das bedeutet, mit dem Befehl `nicht` drehen wir das Ergebnis von `ist ... verzaubert` um und erhalten `wahr`, wenn er nicht verzaubert ist.
3. Füge dann die Verzauberung `KNOCKBACK` (auf Deutsch "Rückstoß") mit dem `Level *3*` hinzu.

{% hint style="info" %}
**Ausprobieren!**

Probiere es gleich aus! Klappt es? Dann müsste sich der Gegenstand sofort verzaubern, wenn du ihn in die Hand nimmst. Das siehst du im Spiel - der Schläger auf Slot 1 ist verzaubert (blau...), der auf Slot 2 nicht.





<img src="../.gitbook/assets/ingame schlaeger.png" alt="1 ist in der Hand - und verzaubert!" data-size="original">
{% endhint %}



{% hint style="info" %}
**Alternative Schläger**

Man kann auch mit einem Bogen (eventuell mit Schlag verzaubert) sehr gut spielen, wenn der Ball weiter weg ist.

Probiere es doch mal aus!
{% endhint %}

