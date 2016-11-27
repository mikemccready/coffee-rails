// index.js
import React from 'react';
import { render } from 'react-dom';
import { Router, Route, IndexRedirect, Link, browserHistory } from 'react-router';

import App from './containers/App';
import ProductList from './components/ProductList';
import ProductView from './components/ProductView';

// attach point
const appRoot = document.getElementById('app');

render((
	<Router history={browserHistory}>
		<Route path="/" component={App}>
			<IndexRedirect to="products"/>
			<Route path="products" component={ProductList}/>
			<Route path="/products/:product/:id" component={ProductView}/>
		</Route>
	</Router>
), appRoot);