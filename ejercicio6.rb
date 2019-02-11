

#Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.


#1. Obtener el plato mas caro.
#2. Obtener el plato mas barato.
#3. Sacar el promedio del valor de los platos.
#4. Crear un arreglo con solo los nombres de los platos.
#5. Crear un arreglo con solo los valores de los platos.
#6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.

restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }

# 1
puts restaurant_menu.key(restaurant_menu.values.max)

# 2
puts restaurant_menu.key(restaurant_menu.values.min)

# 3
puts restaurant_menu.values.sum.to_f / restaurant_menu.length

# 4
restaurant_nom = restaurant_menu.keys
print "#{restaurant_nom}\n"

# 5
restaurant_val = restaurant_menu.values
print "#{restaurant_val}\n"

# 6
restaurant_menu = restaurant_menu.map { |key, val| [key, (val * 1.19)] }.to_h
print "#{restaurant_menu}\n"

# 7
restaurant_menu = restaurant_menu.map do |key, val|
  [key, (key.split(' ').length > 1 ? (val * 0.8) : val)]
end.to_h
print restaurant_menu