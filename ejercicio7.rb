
#Se tiene un hash con el inventario de un negocio de computadores.
#Se pide:
#1- Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
#2- Si el usuario ingresa 1, podrá **agregar** un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma. Ejemplo del input: "Pendrives, 100"
#3- Si el usuario ingresa 2, **podrá eliminar** un item.
#4- Si el usuario ingresa 3, puede **actualizar** la información almacenada (item y stock).
#5- Si el usuario ingresa 4, podrá ver el **stock total** (suma del stock de cada item) que hay en el negocio.
#6- Si el usuario ingresa 5, podrá ver el **ítem que tiene la mayor cantidad de stock**.
#7- Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item **existe en el inventario** o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
#8- El programa debe repertirse hasta que el usuario ingrese 7 (salir).


inventario = {
  'Notebooks' => 4,
  'PC Escritorio' => 6,
  'Routers' => 10,
  'Impresoras' => 6
}

opcion = 0
salir = false
# 1
until salir
  puts 'Ingrese una de las opciones:
  1 Agregar nuevo item.
  2 Eliminar item.
  3 Actualizar item.
  4 Total de stock de cada item.
  5 Consultar por item con mayor stock.
  6 Consultar si item existe.
  7 SALIR'
  opcion = gets.chomp.to_i

  if opcion == 1
    # 2 
    puts 'Ingrese el nuevo producto con el siguiente formato: Pendrives, 100'
    respuesta = gets.chomp.split(',')
    inventario[respuesta[0]] = respuesta[1].to_i
  elsif opcion == 2
    # 3
    puts 'Ingrese el producto que desee eliminar:'
    inventario.delete(gets.chomp)
  elsif opcion == 3
    # 4
    puts 'Seleccione el producto al cual desea cambiar su valor:'
    producto = gets.chomp
    puts 'Ingrese el nuevo valor:'
    inventario[producto] = gets.chomp.to_i
  elsif opcion == 4
    # 5
    puts 'Total de stock:'
    inventario.each { |key, val| puts "* #{key}: #{val}" }
  elsif opcion == 5
    # 6
    puts 'El/los item(s) con mayor stock son:'
    puts(inventario.select { |_, val| val == inventario.values.max }.keys)
  elsif opcion == 6
    # 7
    puts 'Ingrese el producto que quiere comprobar que existe:'
    puts inventario.key?(gets.chomp) ? 'Si' : 'No'
  elsif opcion == 7
    salir = true
  else
    # 8
    puts 'ERROR: La opcion ingresada es invalida.'
  end

end