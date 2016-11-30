// index.js
import { combineReducers } from 'redux';
import { routerReducer } from 'react-router-redux';

import machineData from './coffee_makers';
import podData from './coffee_pods';

const rootReducer = combineReducers({
	machineData,
	podData,
	routing: routerReducer
});

export default rootReducer;