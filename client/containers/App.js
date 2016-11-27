// App.js
import React from 'react';
import { Link } from 'react-router';

import ProductList from '../components/ProductList';

export default class App extends React.Component {
	constructor(props) {
		super(props);
		this.state = {}
	}

	render() {
		return(
			<div>
				<nav>
					<Link to="/products">Products</Link>
				</nav>
				<div className="main-container">
					{this.props.children}
				</div>
			</div>
		)
	}
}
