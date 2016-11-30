// ProductList.js
import React from 'react';
import { Link } from 'react-router';

export default function ProductList(props) {
	const machines = props.machineData.map((machine, i) => {
		const productLink = '/products/coffee_makers/' + machine.id;
		return 	<div key={i}>
							<Link to={productLink}>
								{machine.product_title}<br/>
								{machine.sku}
								<br/><br/>
							</Link>
						</div>
	})

	const pods = props.podData.map((pod, i) => {
		const productLink = '/products/coffee_pods/' + pod.id;
		return 	<div key={i}>
							<Link to={productLink}>
								{pod.product_title}<br/>
								Quantity: {pod.pack_size}
								<br/><br/>
							</Link>
						</div>
	})

	return(
		<div>
			<h3>Machines</h3>
			{machines}
			<h3>Pods</h3>
			{pods}
		</div>
	)
}