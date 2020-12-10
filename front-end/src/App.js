import "./App.css";
import Heading from "./Heading";
import UserLogoutPage from "./components/UserLogoutPage";
import WelcomePage from "./components/WelcomePage";
import { BrowserRouter, Route, Switch } from "react-router-dom";

function App() {
  // return (
  //   <div className="container">
  //     <div>
  //       <Heading />
  //     </div>
  //     <WelcomePage />
  //     <UserLogoutPage />
  //   </div>
  // );

return (
  <BrowserRouter>
    <div className="container">
      <div>
        <Heading />
      </div>
      <div className="connect-components">
        <Switch>
          <Route exact path="/" component={WelcomePage} />
          <Route exact path="/logout" component={UserLogoutPage} />
        </Switch>
      </div>
    </div>
  </BrowserRouter>
);
}

export default App;
