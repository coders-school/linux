# Narzędzia programisty

## Linux

### Procesy

#### Informacje o procesach

* `ps` - wyświetla działające procesy aktualnego użytkownika odpalone poprzez terminal
* `ps aux` - wyświetla procesy wszystkich użytkowników wraz z ich nazwami oraz te procesy, które nie są odpalone poprzez terminal
* `top` - podgląd zużycia zasobów (procesora, pamięci) przez konkretne procesy
* `htop` - lepszy `top` :) Trzeba go sobie doinstalować.

#### Odpalanie własnych procesów

`./bin` - odpala program bin, który znajduje się w aktualnym katalogu. `bin` nie zadziała ze względów bezpieczeństwa. Smutno byłoby mieć "przypadkiem" w katalogu program o "przypadkowej nazwie" `ls`, który formatuje dysk ;) 

#### Zarządzanie procesami

* `kill PID` - zabicie procesu o numerze PID poprzez wysłanie sygnału 15 TERM
* `kill -9 PID` - zabicie procesu poprzez wysłanie sygnału 9 KILL do procesu o numerze PID
* `Ctrl + C` - zakończenie aktualnego procesu (wysyła sygnał 15 TERM)
* `Ctrl + D` - koniec wprowadzania znaków
* `Ctrl + Z` - "zminimalizowanie" programu w konsoli. Program działa dalej w tle.
* `fg` - przywrócenie "zminimalizowanego" programu do danego okna konsoli.
* `fg 2` - przywrócenie "zminimalizowanego" programu o numerze 2 do danego okna konsoli.
* `jobs` - wyświetla "zminimalizowane" aplikacje wraz z ich numerami.
* `app &` - uruchomienie programu app w formie "zminimalizowanej", aby nie blokować konsoli
