// coffee_pods.js
export default function podData(state = [], action) {
	switch (action.type) {
		case 'SET_POD_DATA':
			const newState = action.data
			return newState;
		default:
			return state;
	}
}
