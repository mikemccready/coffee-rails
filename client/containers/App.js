// App.js
import React from 'react';

export default class App extends React.Component {
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
			return <div key={i}>{machine.product_type}<br/><br/></div>
		})

		const pods = this.state.podData.map((pod, i) => {
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
}