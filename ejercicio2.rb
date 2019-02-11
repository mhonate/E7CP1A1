 productos = {
 	bebida: 850,
 	chocolate: 1200,
 	galletas: 900,
 	leche: 750}

#Se quiere agregar un nuevo producto al hash
productos[:cereal] = 2200

#Se quiere actualizar el precio de la bebida:
producto[:bebida] = 2000

#Convertir el hash en un array y guardarlo en una nueva variable.
arr_productos = productos.to_a

#Eliminar el producto 'galletas' del hash.
productos.delete(:galletas)

 Productos.each { |valor, producto| puts producto }
 