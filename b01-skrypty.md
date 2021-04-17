# Narzędzia programisty

## Linux

### Bonus - Skrypty w shellu

#### Uprawnienia

`drwxrwxrwx`

* `d` - plik jest katalogiem
* `r` - uprawnienia do odczytu (w przypadku katalogu wypisania zawartości
* `w` - uprawnienia do zapisywania (dla katalogów - tworzenie plików)
* `x` - uprawnienia do wykonywania (dla katalogów - do przejścia do nich - `cd`)

#### Reprezentacja uprawnień za pomocą flag

`4 = r, 2 = w, 1 = x`

* `0 == ---`
* `1 == --x`
* `2 == -w-`
* `3 == -wx`
* `4 == r--`
* `5 == r-x`
* `6 == rw-`
* `7 == rwx`

#### Grupy uprawnień

* `-rwx------` - uprawnienia rwx tylko dla właściciela
* `----rwx---` - uprawnienia rwx dla grupy
* `-------rwx` - uprawnienia rwx dla wszystkich

#### Zarządzanie uprawnieniami

`chmod` to program do zmiany uprawnień

* `chmod +x script.sh` - dodaj uprawnienia do uruchamiania dla pliku script.sh
* `chmod -w script.sh` - zabierz uprawnienia do zapisu dla pliku script.sh
* `chmod 0754 script.sh` - daj uprawnienia `rwx` dla właściciela, `r-x` dla grupy i `r--` dla reszty. Inaczej - każdy może go odczytać, grupa i właściciel wykonać, a tylko właściciel zapisywać/modyfikować.
