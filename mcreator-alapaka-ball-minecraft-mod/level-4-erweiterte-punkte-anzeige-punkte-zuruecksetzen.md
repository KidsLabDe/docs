# Level 4: Erweiterte Punkte-Anzeige / Punkte zurücksetzen

Beim Testen und Spielen ist uns etwas aufgefallen: Jeder kann relativ einfach dem anderen Team Punkte klauen, indem er einfach zum Tor schleicht und rechts klickt. Deswegen haben wir uns Folgendes überlegt: Wenn jedes Mal eine Nachricht an alle Spieler gesendet wird, wenn Punkte zurückgesetzt werden, wäre der Betrug schnell enttarnt. Schau dir mal den folgenden Programm-Code an:

![Erweiterung des Codes zum Zurücksetzen](<../.gitbook/assets/code erweitern (1).png>)

1. Wir setzen aus vielen Bauteilen die Nachricht für den Chat zusammen:
   * Spielername mit _Erhalte den (Anzeige-)Namen von > Event/target entity_
   * " hat " (Leerzeichen nicht vergessen)
   * _runde_ ]> _Erhalte Global punktzahl\_blau_
   * " Punkte von Blau zurückgesetzt!"
2. Achte darauf, dass die Punkte erst danach auf 0 gesetzt werden, ansonsten wird im Chat immer 0 angezeigt.

Das Gleiche musst du auch in dem Code für Orange durchführen, damit es für beide Farben passt.

{

} Wenn wir mehrere Textbausteine aneinander hängen, müssen wir darauf achten, wo die Leerzeichen stehen, sonst wird der Text schwer lesbar. Zum Beispiel vor und nach _hat_ ist jeweils ein Leerzeichen. {}

{

} Starte dein Programm und teste alles noch einmal! Funktioniert alles? Für beide Farben? {}
