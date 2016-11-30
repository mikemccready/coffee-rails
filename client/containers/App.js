// App.js
import React from 'react';
import { Link } from 'react-router';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import * as actionCreators from '../actions/actionCreators';

class AppComponent extends React.Component {
	render() {
		return(
			<div>
				<nav>
					<Link to="/products">Products</Link>
				</nav>
				<div className="main-container">
					{React.cloneElement(this.props.children, this.props)}
				</div>
			</div>
		)
	}
}

function mapStateToProps(state) {
	console.log('app', state)
	return {
		machineData: state.machineData,
		podData: state.podData
	}
}

function mapDispatchToProps(dispatch) {
	return bindActionCreators(actionCreators, dispatch);
}

const App = connect(mapStateToProps, mapDispatchToProps)(AppComponent);

export default App;