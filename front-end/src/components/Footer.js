import React from "react";
const Footer = () => {
     
  return (
    <div className="footer">
      <div>
        <ul className="footer_items">
          <h4>Community</h4>
          <li className="footer_item">
            <a
              href="https://www.codeyourfuture.io"
              target="_blank"
              rel="noopener noreferrer"
              className="footer_link-item"
            >
              Website
            </a>
          </li>
          <li className="footer_item">
            <a
              href="https://docs.codeyourfuture.io"
              target="_blank"
              rel="noopener noreferrer"
              className="footer_link-item"
            >
              Documentation
            </a>
          </li>
          <li class="footer_item">
            <a
              href="https://github.com/codeyourfuture/"
              target="_blank"
              rel="noopener noreferrer"
              className="footer_link-item"
            >
              GitHub
            </a>
          </li>
        </ul>
      </div>
      <div className="copyright">
        <div>Copyright © 2020 CodeYourFuture</div>
      </div>
      <div>
        <ul className="footer_items">
          <h4>Social</h4>
          <li className="footer_item">
            <a
              href="https://www.facebook.com/codeyourfuture.io"
              target="_blank"
              rel="noopener noreferrer"
              className="footer_link-item"
            >
              Facebook
            </a>
          </li>
          <li className="footer_item">
            <a
              href="https://www.instagram.com/codeyourfuture_"
              target="_blank"
              rel="noopener noreferrer"
              className="footer_link-item"
            >
              Instagram
            </a>
          </li>
          <li className="footer_item">
            <a
              href="https://twitter.com/CodeYourFuture"
              target="_blank"
              rel="noopener noreferrer"
              className="footer_link-item"
            >
              Twitter
            </a>
          </li>
        </ul>
      </div>
    </div>
  );
};

export default Footer;
