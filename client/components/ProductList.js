// ProductList.js
import React from 'react';
import { Link } from 'react-router';

export default class ProductList extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			machineData: [],
			podData: []
		}
		this.getMachineData = this.getMachineData.bind(this);
		this.getPodData = this.getPodData.bind(this);
	}

	componentDidMount() {
		this.getMachineData();
		this.getPodData();
	}

	getMachineData() {
		const that = this;
		fetch('http://localhost:3000/coffee_makers/')  
		  .then(response => {  
	      if (response.status !== 200) {  
	        console.log('Error. Status Code: ' + response.status);  
	        return;  
	      }
	      response.json().then(data => { 
	        that.setState({machineData: data})  
	      });  
		  })  
		  .catch(err => {  
		    console.log('Fetch Error :-S', err);  
		  });
	}

	getPodData() {
		const that = this;
		fetch('http://localhost:3000/coffee_pods/')  
		  .then(response => {  
	      if (response.status !== 200) {  
	        console.log('Error. Status Code: ' + response.status);  
	        return;  
	      }
	      response.json().then(data => { 
	        that.setState({podData: data})  
	      });  
		  })  
		  .catch(err => {  
		    console.log('Fetch Error :-S', err);  
		  });
	}

	render() {
		const machines = this.state.machineData.map((machine, i) => {
			const productLink = '/products/coffee-makers/' + machine.id;
			return 	<div key={i}>
								<Link to={productLink}>
									{machine.product_type}
									<br/><br/>
								</Link>
							</div>
		})

		const pods = this.state.podData.map((pod, i) => {
			const productLink = '/products/coffee-pods/' + pod.id;
			return 	<div key={i}>
								<Link to={productLink}>
									{pod.product_type}<br/>
									{pod.coffee_flavor}
									<br/><br/>
								</Link>
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
}