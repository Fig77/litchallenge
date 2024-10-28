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

# Nota, el codigo puede ser brutalmente optimizado hasta la muerte, pero fue todo cowboy.


# funcion añadida a lo ultimo luego de probar que la solucion es falsa para casos pares
def diagonal_split(e,j,i,n)
  if e
    return  (i < j ? 1 : 0)
  end

  return (i + j < n) ? 1 : 0
end

def minichallenge(n)
  board = Array.new(n) { Array.new(n, 0) }
  mid = n / 2

  e = n.even?
  (0...n).each do |i|
    (0...n).each do |j|
      board[i][j] = diagonal_split(e,j,i,n)
    end
  end

  board
end

def manual_test(board)
  counter = {}

  board.each do |row|
    redcount = row.count(1)
    return false if counter[redcount]
    counter[redcount] = true
  end
  
  true
end

def print_board(board)
  board.each do |row|
    puts row.map { |cell| cell == 1 ? 'R' : 'B' }.join(' ')
  end
end

n = gets.to_i
board = minichallenge(n)
# print_board(board) 
puts manual_test(board) ? "1/1" : "0/1 failed :( no voy a colorear esto)"

# adjunto el dibujito que hice.