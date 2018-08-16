class Vehicle
 def initialize(model, year)
 @model = model
 @year = year
 @start = false
 end
 def engine_start
 @start = true
 end
end

class Car < Vehicle
  @@instancias = 0 
  def initialize(model, year)
    super
    @@instancias += 1
  end

  def engine_start
    super
    'El motor se ha encendido!'
  end

  def self.instancias
    @@instancias
  end

  
end


a = []
  10.times do |i|
    a << Car.new("Modelo #{i}", 2018)
  end

p Car.instancias
p a[0].engine_start
#Crear una clase Car que herede de Vehicle
#El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un contador de instancias de Car.
#Crear un método de clase en Car que devuelva la cantidad de instancias.
#El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
#Instanciar 10 Cars.
#Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.