# Narzędzia programisty

## Linux

### Wyszukiwanie - `find`

* `find pattern` - wyszukuje plików o nazwie pasującej do wzorca pattern
* `find . -name pattern` - wyszukuje w bieżącym katalogu rekursywnie pliki, których nazwa pasuje do wzorca pattern

### Ograniczanie wyników

* `head` - wyświetla 10 pierwszych wyników
* `head -n5` - wyświetla 5 pierwszych wyników
* `tail` - wyświetla 10 ostatnich wyników

#### Zadanie 1

Czego i gdzie szuka ta komenda?
`find / -iname sth`

#### Zadanie 2

Znajdź, gdzie w systemie plików leży kompilator g++ lub clang++, w zależności którego używasz.
Obejrzenie lekcji o przekierowaniach może Ci ułatwić odnalezienie właściwego pliku.
