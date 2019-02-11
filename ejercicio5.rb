
#Dados los siguientes array:

meses = %w[Enero Febrero Marzo Abril Mayo]
ventas = [2000, 3000, 1000, 5000, 4000]


# Generar un hash que contenga los meses como llave y las ventas como valor:
# h = {'Enero': 2000, 'Febrero': 3000 ... }
h = {}
meses.each_with_index { |value, index| h[value] = ventas[index] }

# Invertir las llaves y los valores del hash.
h = h.invert

# Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
puts(h.select { |e| e == h.keys.max }.values)