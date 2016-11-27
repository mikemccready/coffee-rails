// ProductList.js
import React from 'react';

export default function ProductList(props) {
	const machines = props.machineData.map((machine, i) => {
		return <div key={i}>{machine.product_type}<br/><br/></div>
	})

	const pods = props.podData.map((pod, i) => {
		return 	<div key={i}>
							{pod.product_type}<br/>
							{pod.coffee_flavor}
							<br/><br/>
						</div>
	})

	return(
		<div>
			<h3>Machines</h3>
			{ machines }
			<h3>Pods</h3>
			{ pods }
		</div>
	)
}