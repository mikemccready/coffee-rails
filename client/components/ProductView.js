import React from 'react';
import { Link } from 'react-router';

export default function ProductView(props) {
	const id = props.params.id;
	const product = props.params.product;

	let relatedProducts;
	let productData;

	if (product === 'coffee_makers') {
		productData = props.machineData[id - 1];
		relatedProducts = productData.coffee_pods.map((product, i) => {
			const productLink = '/products/coffee_pods/' + product.id;
			return 	<div key={i}>
								<Link to={productLink}>
									{product.product_title}<br/>
									{product.pack_size}
									<br/><br/>
								</Link>
							</div>
		});
	}	else if (product === 'coffee_pods') {
		productData = props.podData[id - 1];
		relatedProducts = productData.coffee_makers.map((product, i) => {
			const productLink = '/products/coffee_makers/' + product.id;
			return 	<div key={i}>
								<Link to={productLink}>
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
			<h2>{productData.product_title}</h2>
			<h4>Owners also purchased</h4>
			{relatedProducts}
		</div>
	)
}












