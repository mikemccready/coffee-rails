import React from 'react';

export default class ProductView extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			product: ''
		}
	}

	componentWillMount() {
		let product = window.location.pathname;
		this.setState({product: product})
	}

	componentDidMount() {
		// this.getProductData();
	}

	render() {
		console.log(window.location)
		return <div>{this.state.product}</div>
	}
}