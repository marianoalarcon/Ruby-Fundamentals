class Probe
  def self.next_probe_id
    @next_probe_id ||=0
    @next_probe_id += 1
  end

  def initialize(size = {})
    @name = "Probe #{Probe.next_probe_id}"
    @type = size[:regular]
    @size = size[:large]
  end

  def to_a
    instance_variables.map { |v| instance_variable_get(v)}
  end

  def to_ar(cant = 10, *args )
    puts "holaa  " + " Cantidad: " + cant.to_s
    p args
  end

  def produce_fleet(days_to_complete =10, *types)
    p types[0] = "blue"
  end




end


p [*Probe.new(large:"Medio", regular: "f")]
p [*Probe.new(large:"Medio", regular: "f")]
p [*Probe.new(large:"Medio", regular: "f")]
p [*Probe.new(large:"Medio", regular: "f")]

p1 = Probe.new(large:"Medio", regular: "f")
p1.produce_fleet(15, :range , :color , :size)
p1.to_ar(15,"hello", "its me", "when you")
