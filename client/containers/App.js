// App.js
import React from 'react';

import ProductList from '../components/ProductList';

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
		return <ProductList machineData={this.state.machineData} podData={this.state.podData} />
	}
}
