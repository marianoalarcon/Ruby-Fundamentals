class Person
  def initialize(name,sourname, age)
    @nombre = name
    @apellido = sourname
    @edad = age
  end

  @sueldoBasico = 10
  def self.sueldoBasico
    @sueldoBasico
  end
  def mostrar
    puts nombre
    puts apellido
    puts edad

  end
  attr_accessor :nombre, :apellido, :edad
end

result = class Tecnico < Person
  variable = 7 * 7
  @sueldoBasico = 99
  attr_accessor :cod
  def initialize(name,sourname,age,cod)
    @cod = cod
    super(name,sourname,age)
  end
  private
  def mostrar
    puts cod
    super
  end
  variable
end

t1 = Tecnico.new("Peter","Park",21,222)
t1.send :mostrar
puts "sueldoBasico: " ,Tecnico.sueldoBasico , Person.sueldoBasico

puts "resultado: " + result.to_s
puts Tecnico.superclass
