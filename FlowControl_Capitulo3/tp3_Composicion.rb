class HistoriaClinica
  def initialize(opciones = {})
    @nombre = opciones[:name]
    @dni = opciones[:dni]
    @domicilio = opciones[:domicilio]
    @es_prematuro = opciones[:es_prematuro]
    @controles_medicos = Array.new
  end
  def agregar_control(op_control = {})
    if controles_medicos.empty?
      op_control[:observaciones] = "Primer Control"
      nuevo_control = Control.new(op_control)
      controles_medicos.push(nuevo_control)

    elsif es_prematuro
      if op_control[:peso] > controles_medicos.last.peso * 1.1
        op_control[:observaciones] = "Evolucion en el Tratamiento"
        nuevo_control = Control.new(op_control)
        controles_medicos << nuevo_control
      else
        op_control[:observaciones] = "Asignar un Plan Nutricional"
        nuevo_control = Control.new(op_control)
        controles_medicos << nuevo_control
      end
    else
      if  peso > controles_medicos.last.peso * 1.15
        op_control[:observaciones] = "Evolucion en el Tratamiento"
        nuevo_control = Control.new(op_control)
        controles_medicos << nuevo_control
      else
        op_control[:observaciones] = "Asignar un Plan Nutricional"
        nuevo_control = Control.new(op_control)
        controles_medicos.push(nuevo_control)
      end
    end
      #nuevo_control.listar_control
     # controles_medicos.each { |x| x.listar_control }
    #end
  end

  def listar_historia
    puts "Nombre : " + nombre
    puts "Dni :" + dni.to_s
    puts "Domicilio: " + domicilio
    puts "Prematuro:  " + es_prematuro.to_s
    puts "Controles Medicos paciente : " + nombre
    controles_medicos.each { |x| x.listar_control }
  end

  attr_accessor :nombre,:dni, :domicilio, :es_prematuro , :controles_medicos
end

class Control
  def initialize(op_control)
    @fecha = op_control[:fecha]
    @peso = op_control[:peso]
    @talla = op_control[:talla]
    @observaciones = op_control[:observaciones]
  end
  attr_accessor :peso, :talla, :observaciones, :fecha

  def listar_control
    puts fecha.strftime("%d/%m/%Y")
    puts "Peso Control: " + peso.to_s
    puts "Talla Control :" + talla.to_s
    puts "Observaciones " + observaciones
  end

end


require 'date'

f_control = Date.new(2019,10,12)

history_one = HistoriaClinica.new(es_prematuro: true, name: "Peter", dni: 37521123,domicilio: "Av Santa Fe 1500")

history_one.agregar_control(fecha: Date.today,peso: 10, talla: 50)

history_one.agregar_control(fecha: Date.today,peso: 12, talla: 50)
history_one.agregar_control(fecha:f_control,peso:12, talla:53)

history_one.listar_historia
#.agregar_control(Date.today,10,50)

#ar = [1]
#ar.push(2)
#ar << 3
#ar.each { |chr| puts chr}
