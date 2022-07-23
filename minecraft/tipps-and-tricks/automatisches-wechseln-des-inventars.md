# Automatisches Wechseln des Inventars

Pro Inventarplatz können ja 64 Blöcke gesetzt werden:

![](<../../.gitbook/assets/Turtle - Inventar.png>)

Wenn Du jetzt den normalen "Platziere" Befehl verwendest, kann es passieren, dass ein Inventar-Platz leer wird. Das führt zu folgender Fehlermeldung:

![](<../../.gitbook/assets/Turtle - FAQ - No Items to place.png>)

Um diesen Fehler zu beheben, musst du also den Inventar-Platz wechseln. Hier findest du ein Beispiel, für ein [Unterprogramm](../programme-and-disketten/unterprogramme.md), das dies automatisch für Dich erledigt:

![](<../../.gitbook/assets/Turtle - Automatisches Inventar.png>)

Was macht dieses Programm?

Es benutzt die Variable "F". Der Block "Setze Block" liefert den Wert "Falsch" zurück, wenn er nicht erfolgreich ist - zum Beispiel, weil das Inventar leer ist. Das nutzen wir, um den Inventar Platz zu wechseln, solange, bis wieder es wieder geht.
