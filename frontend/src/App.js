import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import SignIn from './components/SignIn';
import RegistrationForm from './components/RegistrationForm';

const App = () => {
  return (
    <Router>
      <Switch>
        <Route path="/" exact component={SignIn} />
        <Route path="/register" component={RegistrationForm} />
      </Switch>
    </Router>
  );
};

export default App;
