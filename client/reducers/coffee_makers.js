// coffee_makers.js

export default function machineData(state = [], action) {
	switch(action.type) {
		case('SET_MACHINE_DATA'):
			const newState = action.data;
			return newState;
		default:
			return state;
	}
}