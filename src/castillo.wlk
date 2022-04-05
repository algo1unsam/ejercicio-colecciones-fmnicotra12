object castillo {
	const baul = #{};
	
	method getBaul() {
		return baul;
	}
	
	method guardarTodo(_artefactos) {
		baul.addAll(_artefactos)
	}
	
}
