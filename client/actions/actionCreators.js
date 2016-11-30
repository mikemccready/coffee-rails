// actionCreators.js
export function setMachineData(data) {
	return {
		type: 'SET_MACHINE_DATA',
		data
	}
}

export function setPodData(data) {
	return {
		type: 'SET_POD_DATA',
		data
	}
}

export function setSelectedProduct(data) {
	return {
		type: 'SET_SELECTED_PRODUCT',
		data
	}
}
