# OCG IDABUS Wiki

Das ist die OCG IDABUS UI Wiki im Aufbau.

# Zusammenfassung bisher:

- Der PowerShell Script Convert_MD_Pages.ps1 ist dazu da um neue Seiten für Github Pages zu adaptieren. Er muss noch getestet und angepasst werden, einige Sachen können sicherlich noch automatisiert werden, aber das wichtigste sollte drinnen sein, nämlich:
-- Das Hinzufügen vom Header
-- das ersetzen von ".attachements" mit "img"
-- das setzen vom toc wert (wenn toc: true im header steht, bekommt die seite einen table of contents wenn die seite das layout docs hat)
- Das docs layout setzt toc wenn toc: true und es zeigt die seite  nur an wenn der status im header nicht auf todo ist (siehe index.md)
- Das genutzte theme just the docs macht schon ziemlich viel für uns. Doku siehe hier: https://pmarsceill.github.io/just-the-docs/ . Da steht auch erklärt wie das setzen der nav_counts funktioniert und wie man parent und children pages setzt

Die Seiten die in die Doku müssen sind laut Jie folgende (Ich bin mir nicht sicher wie diese den Kunden helfen sollen, entscheide gerne du auch nach eigenem ermessen was reinsoll und stell alles was noch nicht gut genug für Kunden geschrieben ist einfach status: todo oder packs in einen ordner der mit "_" anfängt, dann wird es als jekyll ordner erkannt und nicht als potentielle page source soweit ich das bisher verstanden habe)
- Installation
- Configure and verify installation
- Modules
- Initialising process
- Sets based UI settings
- Editors
- Event hooks (um zu zeigen, dass die UI erweiterbar ist, wäre gut, usere Adv. Training zu verkaufen)
- Theming


Noch eins: ich habe versucht eine lokale Jekyll Umgebung aufzubauen und es ist auf windows sehr krampfig. Ich empfehle es einfach nicht zu tun und wenn auf einer virtuellen linux ubuntu maschine. (Das hab ich vor wenn ich dafür wieder Zeit habe)

Bei Fragen o.ä. (und sei es "hast du das schon probiert oder warum ist das so und nicht so?") gerne per teams fragen, ich sollte da die ganze Woche erreichbar sein :)
