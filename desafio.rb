module Ejeable
	# numeroEjes=3
	def ejes(numeroEjes)
		puts "tengo #{numeroEjes} ejes"
	end
end

class Vehicle 
	attr_reader :color,:rendimiento
	@@instances=0
	def initialize(color,rendimiento)
		@@instances+=1
		# @fecha_creacion=Time.now
		@fecha_creacion=Time.new(2007,11,1,15,25,0, "+09:00")
		@color=color
		@rendimiento=rendimiento
	end
	def self.get_number_of_instances
		@@instances
	end

	def self.gas_mileage(distancia,rendimiento)
		distancia/rendimiento
	end
	
end

class MyCar <Vehicle
	@@NUMBER_OF_DOORS = 3
	@@numeroEjes=3
	def self.NUMBER_OF_DOORS
		@@NUMBER_OF_DOORS
	end

	def initialize(color,rendimiento)
		super(color,rendimiento)
	end

	def spray_paint(color)
		@color=color
	end

	def TiempoVida
		(Time.now - @fecha_creacion)/(60*60*24*365)
		# (Time.now.to_i - @fecha_creacion.to_i).abs

	end

	private:TiempoVida
end

class MyTruck < Vehicle
	@@NUMBER_OF_DOORS = 5
	@@numeroEjes=4
	def self.NUMBER_OF_DOORS
		@@NUMBER_OF_DOORS
	end
	include Ejeable
end


# module vehiculos



autorojo= MyCar.new("rojo",13)
puts MyCar.gas_mileage(1500,autorojo.rendimiento)

# puts autorojo.TiempoVida
puts Vehicle.get_number_of_instances



print Vehicle.ancestors
puts ""
print MyCar.ancestors
puts ""
print MyTruck.ancestors
puts ""




# autorojo.ejes
camionAzul = MyTruck.new("azul",7)
camionAzul.ejes(4)

