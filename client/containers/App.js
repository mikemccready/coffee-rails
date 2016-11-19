// App.js
import React from 'react';

export default class App extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			machines: []
		}
		this.getMachines = this.getMachines.bind(this);
	}

	componentDidMount() {
		this.getMachines();
	}

	getMachines() {
		const that = this;
		fetch('http://localhost:3000/coffee_makers/')  
		  .then(response => {  
	      if (response.status !== 200) {  
	        console.log('Error. Status Code: ' + response.status);  
	        return;  
	      }
	      response.json().then(data => {  
	        that.setState({machines: data})  
	      });  
		  })  
		  .catch(err => {  
		    console.log('Fetch Error :-S', err);  
		  });
	}

	render() {
		const machines = this.state.machines.map((machine, i) => {
			return <div key={i}>{machine.product_type}</div>
		})

		return(
			<div>
				<h3>Machines</h3>
				{ machines }
			</div>
		)
	}
}