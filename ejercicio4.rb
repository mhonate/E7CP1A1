#Se tienen dos arrays uno con el nombre de personas y otro con las edades, 
#se pide generar un hash con el nombre y edad de cada persona 
#(se asume que no existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

# Crear un metodo que reciba el hash y devuelva el promedio de las edades

def obtener_promedio(hash)
  hash.values.inject(0) { |sum, n| sum + n }.to_f / hash.length
end


hash = {}
personas.each_with_index { |value, index| hash[value.to_sym] = edades[index] }


# del hash pasado como argumento.

print obtener_promedio(hash)
