# Narzędzia programisty

## Linux

### Pomoc i instrukcje

* `command --help` - wyświetla skróconą pomoc (uwaga na podwójny myślnik!)
* `man command` - wyświetla instrukcję (manual) dla komendy command. Manual otwiera się w programie less.

### Argumenty

* `-x` - argument w skróconej (jednoliterowej) wersji
* `--long` - argument w dłuższej wersji (uwaga na podwójny myślnik!)
* `-abc` == `-a -b -c`
* `[option]` - argument w nawiasach kwadratowych jest opcjonalny
* `a | b` - dozwolony argument a lub b, ale nie oba na raz

#### Przykład

`mv [-f | -i | -n] [-v] source target`

Możliwe użycia:

* `mv -v source target`
* `mv -f source target`
* `mv -iv source target`
* `mv -finv source target` - takie użycie jest niepoprawne, ale nie będzie błędu. `man mv` mówi, że opcja `-n` nadpisuje opcje `-f` oraz `-i`, więc jest równoważna opcji `mv -nv source target`

#### Zadanie

Dowiedz się jak skopiować cały katalog wraz z zawartością. Jeśli zawiera on inne katalogi to również chcemy je skopiować. Musisz to zrobić za pomocą jednej komendy. Przegrzeb się przez odpowiedni manual :)
