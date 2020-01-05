class Pelicula
  @@iva = 1.21
  @@precio_base = 100
  @@incremento = 1.3
  attr_accessor :codigo , :titulo, :descripcion, :director, :es_estreno

  def initialize(codigo,titulo,descripcion,director,es_estreno,fecha_estreno)
    @codigo = codigo
    @titulo = titulo
    @descripcion = descripcion
    @director = director
    @es_estreno = es_estreno
    @fecha = fecha_estreno
  end

  def listar_pelicula
    puts "Codigo: " + codigo.to_s
    puts "Titulo: " + @titulo
    puts "Descripcion: " + descripcion
    puts "Director:" + director
    puts "Es una pelicula Estreno: " + es_estreno.to_s
    puts "Precio de Alquiler: " + calcular_precio_alquiler.to_s
    puts "Fecha de Estreno :" + @fecha.strftime("%d/ %m /%Y")

    #t = Time.now

    #ts t.strftime("%d/%m/%Y ")

    rescue Exception => e
    puts "Existe algun error al listar error: " + e.message
    #puts "Backtrace  " + e.backtrace
    false
  end

  def calcular_precio_alquiler
    if es_estreno
      @@precio_base * @@iva * @@incremento
    else
    end
  end
end

require 'date'

f_estreno = Date.new(2019,10,12)
puts f_estreno

spiderMan = Pelicula.new(201,"Hombre Araña","Accion", "Roky Rakun", true,f_estreno)
spiderMan.listar_pelicula
