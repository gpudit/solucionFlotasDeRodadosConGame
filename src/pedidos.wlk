//Pedidos
import rodados.*
import dependencia.*

class Pedidos
	{
	var property distancia
	var property tiempoMaximo
	var property cantidadDePasajeros
	var property coloresIncompatibles = []
	
	method velocidadRequerida() = distancia / tiempoMaximo
	method satisfacePedido(rodado) = (rodado.velocidadMaxima() > self.velocidadRequerida() + 10)
	 and rodado.capacidad() >= cantidadDePasajeros and not coloresIncompatibles.contains(rodado.color())
	method acelerar()
		{
			tiempoMaximo--
		}
	method relajar()
		{
			tiempoMaximo ++
		}
	}
