import React from 'react';
import { Link } from 'react-router';

export default function ProductView(props) {
	let relatedProducts;
	let productData = props.selectedProduct;
	let product = props.params.product;

	if (product === 'coffee_makers') {
		relatedProducts = productData.coffee_pods.map((product, i) => {
			const productLink = '/products/coffee_pods/' + product.id;
			const productData = props.podData[product.id - 1];
			return 	<div key={i}>
								<Link to={productLink} onClick={() => {props.setSelectedProduct(productData)}}>
									{product.product_title}<br/>
									{product.pack_size}
									<br/><br/>
								</Link>
							</div>
		});
	}	else if (product === 'coffee_pods') {
		relatedProducts = productData.coffee_makers.map((product, i) => {
			const productLink = '/products/coffee_makers/' + product.id;
			const productData = props.machineData[product.id - 1];
			return 	<div key={i}>
								<Link to={productLink} onClick={() => {props.setSelectedProduct(productData)}}>
									{product.product_title}<br/>
									{product.sku}
									<br/><br/>
								</Link>
							</div>
		});
	}

	return(
		<div>
			<img src={productData.image_url} />
			<h2>{productData.product_title} ({productData.sku})</h2>
			<h4>Owners also purchased</h4>
			{relatedProducts}
		</div>
	)
}












