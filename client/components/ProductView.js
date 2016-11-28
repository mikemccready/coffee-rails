import React from 'react';
import { Link } from 'react-router';

export default class ProductView extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			product: undefined,
			id: undefined,
			productData: {}
		}
		this.getProductData = this.getProductData.bind(this);
		this.updateProduct = this.updateProduct.bind(this);
	}

	componentWillMount() {
		const product = this.props.params.product;
		const id = this.props.params.id
		this.setState({product: product, id: id}, this.getProductData);
	}

	getProductData() {
		const that = this;
		fetch(`http://localhost:3000/${this.state.product}/${this.state.id}`)  
		  .then(response => {  
	      if (response.status !== 200) {  
	        console.log('Error. Status Code: ' + response.status);  
	        return;  
	      }
	      response.json().then(data => { 
	        that.setState({productData: data})  
	      });  
		  })  
		  .catch(err => {  
		    console.log('Fetch Error :-S', err);  
		  });
	}

	updateProduct(e, id, product, data) {
		const newProduct = product;
		const newId = id
		this.setState({product: newProduct, id: newId, productData: data}, this.getProductData)
	}	

	render() {
		let relatedProducts;

		if (this.state.productData.coffee_pods) {
			relatedProducts = this.state.productData.coffee_pods.map((product, i) => {
				const productLink = '/products/coffee_pods/' + product.id;
				return 	<div key={i}>
									<Link to={productLink} onClick={(e) => {this.updateProduct(e, product.id, 'coffee_pods', product)}}>
										{product.product_title}<br/>
										{product.pack_size}
										<br/><br/>
									</Link>
								</div>
			})
		}	else if (this.state.productData.coffee_makers) {
			relatedProducts = this.state.productData.coffee_makers.map((product, i) => {
				const productLink = '/products/coffee_makers/' + product.id;
				return 	<div key={i}>
									<Link to={productLink} onClick={(e) => {this.updateProduct(e, product.id, 'coffee_makers', product)}}>
										{product.product_title}<br/>
										{product.sku}
										<br/><br/>
									</Link>
								</div>
			})
		}

		return(
			<div>
				{this.state.productData.product_title}
				{relatedProducts}
			</div>
		)
	}
}