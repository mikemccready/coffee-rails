// App.js
import React from 'react';
import { Link } from 'react-router';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import * as actionCreators from '../actions/actionCreators';

class AppComponent extends React.Component {
	constructor(props) {
		super(props);
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
	        that.props.setMachineData(data);  
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
	        that.props.setPodData(data);
	      });  
		  })  
		  .catch(err => {  
		    console.log('Fetch Error :-S', err);  
		  });
	}

	render() {
		return(
			<div>
				<nav>
					<Link to="/">Products</Link>
				</nav>
				<div className="main-container">
					{React.cloneElement(this.props.children, this.props)}
				</div>
			</div>
		)
	}
}

function mapStateToProps(state) {
	return {
		machineData: state.machineData,
		podData: state.podData,
		selectedProduct: state.selectedProduct
	}
}

function mapDispatchToProps(dispatch) {
	return bindActionCreators(actionCreators, dispatch);
}

const App = connect(mapStateToProps, mapDispatchToProps)(AppComponent);

export default App;