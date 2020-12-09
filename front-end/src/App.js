
import './App.css';
import { Button, Form, FormGroup, Label, Input } from 'reactstrap';
import Heading from "./Heading";

function App() {
  return (
    <div className= "container">
    <div>
      <Heading/>
      </div>
      <div>
   <h1><span className= "font-weight-bold">Welcome!</span></h1>
  
   <p className= "first-line">This is an attendance register for CYF classes</p>
    
   </div>
   <div>
   <form className= "input">
    <FormGroup>
<div className="email">
      <input type= "email" placeholder= "Email/User name"></input>

      <input type= "Password" placeholder= "Password"></input>
      </div>
    </FormGroup>
    <button className= "button">Sign in</button>
    </form>
    </div>
    </div>
  );
}

export default App;
