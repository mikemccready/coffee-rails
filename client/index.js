// index.js
import React from 'react';
import {render} from 'react-dom';

import App from './containers/App'

// attach point
const appRoot = document.getElementById('app');

render(<App />, appRoot);