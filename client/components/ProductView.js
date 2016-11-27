import React from 'react';

export default class ProductView extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			product: undefined,
			id: undefined,
			productData: {}
		}
		this.getProductData = this.getProductData.bind(this);
	}

	componentWillMount() {
		const product = this.props.params.product;
		const id = this.props.params.id
		this.setState({product: product, id: id})
	}

	componentDidMount() {
		this.getProductData();
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

	render() {
		console.log(this.state.productData)
		return <div>{this.state.productData.product_title}</div>
	}
}