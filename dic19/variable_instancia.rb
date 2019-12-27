class SpaceShip

  def initialize(destino=nil,name=nil,nombres=nil)
    @name = name
    @destino = destino
    @nombres = nombres
  end

  def launch(destination)
    @destination = destination
    #go towards destination
  end

  def destination
    @destination
  end

  attr_accessor :destino , :name
  attr_writer :nombres
  attr_reader :nombres
end

ship = SpaceShip.new("Nanino","Peter","Parker")
p ship
ship.launch("Tierra")
ship.destino = "Marte"
ship.name = "Mariano"
ship.nombres = "Victoria"
#puts ship.inspect
p ship

puts "Destino 2 " + ship.destino
puts "Destino: " + ship.destination
puts "nombre: " + ship.name
puts "nombre: " + ship.nombres
a = "abc"

b = a

puts a.object_id == b.object_id
