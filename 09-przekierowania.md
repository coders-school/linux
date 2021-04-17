# Narzędzia programisty

## Linux

### Przekierowania

* `> file` - przekierowanie standardowego wyjścia (stdout) do pliku file (nadpisywanie)
* `>> file` - przekierowanie standardowego wyjścia (stdout) do pliku file (dopisywanie)
* `< file` - przekierowanie standardowego wejścia (stdin) z pliku file do programu. Wszystko o co program prosi aby podać z klawiatury zostanie kolejno podane z pliku.
* `<< EOF` - przekierowanie standardowego wejścia (stdin) z wpisanych kolejnych linii aż do wystąpienia ciągu EOF
* `|` - tzw. pipe, przekazanie wyjścia stdout jednego programu jako wejścia stdin drugiego. 
* `2> /dev/null` - przekierowanie standardowego wyjścia błędów (stderr) do pliku /dev/null. W efekcie błędy nie wyświetlają się w terminalu.
* `&> file` - przekierowanie zarówno stdout i stderr do file
