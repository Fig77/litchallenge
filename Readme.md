# minichallenge

## introduction

- challenge random que aparecio al prender un celu viejo y me parecio divertido.

## problema

Un muchacho se entretiene pintando su tablero de ajedrez. Planea cubrir cada espacio por completo en tonos rojos o azules. Para darle un toque personal, quiere contar con igual cantidad de espacios rojos y azules, evitando a su vez que dos filas o columnas presenten el mismo número de espacios rojos. ¿Podría pintar el tablero siguiendo estos criterios? ¿Qué pasaría si, en lugar de un tablero de ajedrez tradicional de 8x8, tuviera uno enorme de 1000x1000? 

## solucion propuesta

Dividir el poligono en base a su diagonal, donde para n%2 = 0 la diagonal del miedo se divide entre ambos valores (indistinto rojo y azul, como 1 y 0, considerando que el problema no requiere que azul no cumpla la misma condicion. La cual, tambien la va a cumplir).

## razonamiento (raw, literal salia de mi cabeza, SIC)

- Problema panteado con dibujito:
  ![20241027_214554](https://github.com/user-attachments/assets/a0d31eee-2112-441f-9d91-aa63ef0e513e)


- Thought train

```ruby
# Razonamiento:
=begin
  - el primer razonamiento fue visual, luego de plantearlo en papel, considerando que en una distribucion triangular cada columna y cada fila iban a tener n - 1 cantidad de x valor (rojo o azul).
  - luego de plantear el problema en papel y probar con una falsedad que un diagonal split es valido para todos lops casos (justamente es valido para todos los casos donde n es impar, que no es ninguno de los planteados en el problema) se planteo lo siguiente:
  - Con la misma distribucion pero, dividendo la diagonal ij QUE, dadod que n es par va a tener un numero par de celdas, es posible conservar la distribucion uniforme, tener misma cantidad de 1s,0s sin tener mismas columnas / filas repetidas.

  Razonamiento para pares: 
    - dibujo manual en un 2x2
  razonamiento (prueba matematica: trust me bro):
   - Si quitamos la diagonal de la grid, conservamos una grdi con la distribucion ya probada
     - la diagonal (de n valores) se puede dividira  la mitad ( n / 2) que, siguiendo la distribucion triangular
     no existe ningun valor (conteo) de n/2 de rojos o azules. (ya que podemos decir que para resolver el problema, mas que contar disidencias en filas y columnas podemos contar disidencias en cantidades de diagonales, que es algo que me di cuenta mientras escribia el razonamiento.
=end

# Nota, el codigo puede ser brutalmente optimizado hasta la muerte pero encontre la propuesta de casualidad y me puse 30 mins para hacerlo. Igual tarde 40ish.

```

el archivo .rb (raw, SIC) contiene el mismo comentario + el codigo escrito para probarlo.

## Para ejecutar el codigo

- requiere ruby >= 2.5 deberia ser suficiente, no recuerdo si .even estaba incorporado al runtime, el resto creo que si.
- correr ruby minichallenge.rb e ingresar el numero a probar, el codigo ejecuta un test (que tendria que chequear) y retorna 1/1 si es verdadero o 0/1 si es falso.
