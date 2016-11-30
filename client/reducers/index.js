// index.js
import { combineReducers } from 'redux';
import { routerReducer } from 'react-router-redux';

import machineData from './coffee_makers';
import podData from './coffee_pods';
import selectedProduct from './selected_product';

const rootReducer = combineReducers({
	machineData,
	podData,
	selectedProduct,
	routing: routerReducer
});

export default rootReducer;