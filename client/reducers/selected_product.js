// selected_product.js
export default function selectedProduct(state = {}, action) {
	switch (action.type) {
		case 'SET_SELECTED_PRODUCT':
			const product = action.data;
			return product;
		default:
			return state;
	}
}