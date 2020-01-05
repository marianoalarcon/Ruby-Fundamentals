puts "SELECCION --------------"
edad = 21

mayor_edad = if edad > 18 then true else false end
puts mayor_edad
distancia = 22
caracteristica = case distancia
                  when 1..18 then 102
                  when 18..21 then 0
                  when 21..80 then -100
                  end
puts caracteristica


puts "ITERACIONES --------------"
# ITERACIONES: -------
#mas comunmente usado en Ruby se llaman Iteradores
i = 3
while i > 0

  puts i
  i -=1
end


for i in ("a".."z")
  print i
end
print "\n"
[1,2,3].each do
  puts "hola"
end
["Walks","this","is"].each {|a| puts a}
10.upto(13) {|j| puts j}
3.downto(0) {|k| puts k}
# ITERACIONES: -------
puts "Exceptions --------------"
# Exceptions:------
def traer_dato(x,y)
  x/y
end
def say_hello
  puts "Hello its me"
end
def division(x,y)
  begin

    traer_dato(x,y)
  rescue Exception => e
    puts "no se puede dividir por cero   " + e.to_s
  end
  say_hello
end

def division_2(x,y)
  say_hello
  traer_dato(x,y)
  true
#CONSULTAR--------!!!
#rescue LightError
#  puts "say_hello el metodo no funciona correctamente, pero se puede presindir y continuar"
#  true
rescue StandardError => e
  puts "no se puede dividir por cero   " + e.message
  #puts "Backtrace  " + e.backtrace
  false
end


puts division_2(2,0)
# Exceptions:------
