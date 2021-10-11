# geoinf2022

Strona internetowa konferencji geoinf2022.

## Działanie strony w technologii Hugo

- Strony w tej technologii opierają się o wcześniej stworzone szablony (zobacz folder `themes`). **Zaawansowane**
- Szablony można dowolnie edytować. 
Moje zmiany w domyślnym szablonie są w folderze `layouts`. **Zaawansowane**
- Główna treść strony znajduje się w folderze `content`. 
Tam można uzupełniać lub dodawać treść używając języka markdown.
**Podstawowe**
- W folderze `content` jest też podfolder `blog`. 
Tam można dodawać kolejne pliki jako ogłoszenia - zobacz plik `2021-10-09-test.md` jako przykład. **Podstawowe**
- Tym jak wygląda główne meny strony (i kilkoma innymi rzeczami) steruje się z poziomu `config.toml`. 
Możesz tam zobaczyć w jaki sposób dodane są kolejne elementy menu. 
One wszystkie powiązane są z plikami w folderze `content`. 
**Podstawowe**
- Folder `static` zawiera dodatkowe pliki na stronie (np. obrazki, pdfy, etc.). 
Zobacz, np. zawartość podfolderu `static/img`. 
Po zbudowaniu strony sam folder `static` się "rozpuszcza" natomiast jego zawartość zaczyna znajdować się w głównej ścieżce strony.
**Średniozaawansowane** 
- Ostatni folder `data` zawiera kilka wbudowanych mechanizmów w ten szablon. 
Przykładowo, podfolder `carousel` zawiera zdefiniowanie "karuzeli" na stronie głównej (tej ze zdjęciami miasta)`.
Podfolder `features` zawiera zdefiniowanie drugiego bloku na stronie głównej, `testimonials` opisuje zaproszone wykłady, a `clients` zawiera definicje sponsorów (dolny panel).
**Średniozaawansowane** 

## Budowanie strony

Strona https://vigilant-ardinghelli-743662.netlify.app/ buduje się automatycznie (jeżeli nic się nie popsuło) po każdym naniesieniu zmiany na GitHubie.
Stronę można też do celów testów budować lokalnie - musisz mieć aktualną wersję strony na swoim komputerze i użyć funkcji `blogdown:::serve_site()`.

## Edytowanie strony

Stronę można edytować na dwa główne sposoby:

1. Poprzez stronę https://github.com/Nowosad/geoinformacja20website. 
Po zalogowaniu i posiadaniu uprawnień, możesz wybrać każdy plik, po czym kliknąć na ikonę długopisu z prawej strony.
Dalej można dany plik edytować jak normalny plik markdown. 
Uwaga: po dodaniu zmian należy zjechać na dół strony do części "Commit changes", tam w tytule w kilku słowach opisać zmiany, a później je zapisać używając zielonego guzika "Commit changes".
2. Ja najczęściej pracuję z poziomu RStudio, ściągam z GitHuba aktualną wersję, edytuję ją, po czym wysyłam zmiany na GitHuba.
Więcej o tym procesie można przeczytać na https://nowosad.github.io/elp/kontrola-wersji.html.

## Podziękowania

- Ta strona została stworzona przy użyciu [Hugo](http://gohugo.io/) i [hugo-universal-theme](https://themes.gohugo.io/hugo-universal-theme/). 
- Projekt strony został zainspirowany przez https://github.com/useR-2018/website. 
- Projekt strony został także zainspirowany przez https://github.com/Nowosad/giscience2020/. 
