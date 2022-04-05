import artefactos.*
import castillo.*

object rolando {
	const items =  #{};
	const historial = [];
	
	method getItems() {
		return items;
	}
	
	method getHistorial(){
		return historial;
	}

	method agarrar(_artefacto) {
		if (items.size() < 2) {
			items.add(_artefacto);
		} 
		historial.add(_artefacto);
	}
	
	method llegaCastillo() {
		castillo.guardarTodo(items);
		items.clear()
	}
	
	method baulCompleto(){
		return self.getItems() + castillo.getBaul();
	}
	
	method encontrarItem(_item) {
		return self.baulCompleto().contains(_item);
	}
	
}