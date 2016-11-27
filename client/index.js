// index.js
import React from 'react';
import { render } from 'react-dom';
import { Router, Route, Link, browserHistory } from 'react-router';

import App from './containers/App'

// attach point
const appRoot = document.getElementById('app');

render(<App />, appRoot);