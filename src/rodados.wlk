//Flota de rodados
import wollok.game.*

class ChevroletCorsa
	{	var property image ="autitorojo.png"
		var property position = game.at(4, 7)
		var property posicionXY = []
		var property posicionX = #{}
		var property posicionY = #{}
		
		const property capacidad = 4
		const property velocidadMaxima = 150
		var property color = ""
		const property peso = 1300
		
		method cambiarAColorRojo()
			{
				image = "autitorojo.png"
			}
		method cambiarAColorAzul()
			{
				image = "autitoazul.png"
			}
		method cambiarAColorVerde()
			{
				image = "autitoverde.png"
			}
		method cambiarPosicion(x, y)
			{
				position = game.at(x, y)
				posicionXY.add([x,y])
				posicionX.add(x)
				posicionY.add(y)
			}
		method pasoPorFila(numero) = posicionX.contains(numero)
		method recorrioFilas(lista_de_numeros) = lista_de_numeros == posicionX
		method pasoPor(posicion) = posicionXY.contains(posicion)
		method moverDerecha()
			{
				self.position(self.position().right(1))
			}
		method moverIzquierda()
			{
				self.position(self.position().left(1))
			}
		method moverArriba()
			{
				self.position(self.position().up(1))
			}
		method moverAbajo()
			{
				self.position(self.position().down(1))
			}
	}
	
	
class RenaultKwid
	{
		const property color = "azul"
		var tieneGnc = false
		
		method tieneGnc()
		{
			tieneGnc = not tieneGnc
		}
		method capacidad() = if(tieneGnc) 3 else 4
		method velocidadMaxima() = if(tieneGnc) 110 else 120
		method peso() = if(tieneGnc) 1350 else 1200
	}
	
object trafic
	{	
		var property motor
		var property interior
		const property color = "blanco"
		
		method capacidad() = interior.capacidad()
		method velocidadMaxima() = motor.velocidadMaxima()
		method peso() = 4000 + interior.peso() + motor.peso()
	}
	
object interiorComodo
	{
		method capacidad() = 5
		method peso() = 700
	}

object interiorPopular
	{
		method capacidad() = 12
		method peso() = 1000
	}
	
object motorPulenta
	{
		method peso() = 800
		method velocidadMaxima() = 130
	}
	
object motorBataton
	{
		method peso() = 500
		method velocidadMaxima() = 80
	}
	
class AutosEspeciales
	{
		var property capacidad
		var property velocidadMaxima
		var property color = ""
		var property peso
	}


