// Dependencias
import rodados.*
import pedidos.*

class Dependencia 
	{
	var property cantidadDeEmpleados
	var flotaDeRodados = []
	var pedidos = []
	
	method agregarAFlota(rodado)
		{
			flotaDeRodados.add(rodado)
		}
	method quitarDeFlota(rodado)
		{
			flotaDeRodados.remove(rodado)
		} 
	method pesoTotalFlota() = flotaDeRodados.sum( { rodado => rodado.peso() } )
	method estaBienEquipada() = flotaDeRodados.size() >= 2 and flotaDeRodados.all( { rodado => rodado.velocidadMaxima() >= 100 } )
	method capacidadTotalEnColor(color) = flotaDeRodados.filter( { rodado => rodado.color() == color } ).sum( { rodado => rodado.capacidad() } )
	method colorDelRodadoMasRapido() = flotaDeRodados.max( { rodado => rodado.velocidadMaxima() } ).color()
	method capacidadFaltante() = (cantidadDeEmpleados - flotaDeRodados.sum( { rodado => rodado.capacidad() } )).abs() 
	method esGrande() = cantidadDeEmpleados >= 40 and flotaDeRodados.size() >= 4
	method agregarPedido(pedido)
		{
			pedidos.add(pedido)
		}
	method sacarPedido(pedido)
		{
			pedidos.remove(pedido)
		}
	method verPedidos() = pedidos
	method totalPasajerosEnPedidos() = pedidos.sum( { pedido => pedido.cantidadDePasajeros() } )
	method auxiliarPedidosInsatisfechos(rodado) = pedidos.filter( { pedido => not pedido.satisfacePedido(rodado) } )
	method pedidosInsatisfechos() = flotaDeRodados.map( {rodado => self.auxiliarPedidosInsatisfechos(rodado)} ).flatten().asSet()
	method colorNoDeseado(color) =  pedidos.all( { pedido => pedido.coloresIncompatibles() == color } )
	method relajarPedidos() = pedidos.forEach( { pedido => pedido.relajar() } )
	method coloresIncompatibles() = pedidos.map( { pedido => pedido.coloresIncompatibles() } ).flatten().asSet()
	method colorMasPopular() = flotaDeRodados.map( { rodado => rodado.color() } )
	}

