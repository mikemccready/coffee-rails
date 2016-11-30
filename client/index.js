// index.js
import React from 'react';
import { render } from 'react-dom';
import { Router, Route, IndexRoute, Link, browserHistory } from 'react-router';
import { Provider } from 'react-redux';
import store, { history } from './store.js';

import App from './containers/App';
import ProductList from './components/ProductList';
import ProductView from './components/ProductView';

// attach point
const appRoot = document.getElementById('app');

const router = (
	<Provider store={store}>
		<Router history={history}>
			<Route path="/" component={App}>
				<IndexRoute component={ProductList}/>
				<Route path="/products/:product/:id" component={ProductView}/>
			</Route>
		</Router>
	</Provider>
)

render(router, appRoot);