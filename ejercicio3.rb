h = {"x": 1, "y":2}


#- Agregar el string z con el valor 3.

h['z'] = 3

#- Cambiar el valor de x por 5.

h['x'] = 5

#- Eliminar la clave y.
h.delete('y')

#- Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".

puts 'yeeah' if h.key?('z')
#- Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
h = h.invert
print h