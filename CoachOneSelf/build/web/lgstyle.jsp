
        <style>
            
       

  /*  wrapper */
  .wrapper {
      width: 100%;
      padding-right: 15px;
      padding-left: 15px;
      margin-right: auto;
      margin-left: auto;
      
  }

  @media (min-width: 576px) {
      .wrapper {
          max-width: 540px;
      }
  }

  @media (min-width: 768px) {
      .wrapper {
          max-width: 720px;
      }
  }

  @media (min-width: 992px) {
      .wrapper {
          max-width: 960px;
      }
  }

  @media (min-width: 1200px) {
      .wrapper {
          max-width: 1140px;
      }
  }

  /*  /wrapper */

  .d-grid {
      display: grid;
  }

  button,
  input,
  select {
      -webkit-appearance: none;
      outline: none;
  }

  button,
  .btn1,
  select {
      cursor: pointer;
  }

  a {
      text-decoration: none;
  }

  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  p,
  ul,
  ol {
      margin: 0;
      padding: 0;
  }


  .w3l-login {
      position:relative;
      height: 100vh;
      
      bottom:;
      
 /*background: url(../images/banner.png) no-repeat 0px 0px;*/
      background-size: cover;
  }

  .logo {
      text-align: center;
  }

  a.brand-logo {
      color:black;
      
      font-size: 42px;
  }



  .w3l-login .form-section {
      max-width: 400px;
      margin: 20px auto;
      padding: 2rem 3rem;
      border-radius: 4px;
      box-shadow: 0px 9px 24px 5px rgba(0, 0, 0, 0.04);
      background: #fff;
  }

  .w3l-login .form-section h3 {
      font-size: 30px;
      line-height: 40px;
      color: #ff8c00;
      text-align: center;
      margin-bottom: 5px;
      font-weight: 600;
  }

  .w3l-login .form-section h6 {
      font-size: 15px;
      color:  ;
      text-align: center;
      margin-bottom: 20px;
  }

  .w3l-login .form-input input[type="email"],
  .w3l-login .form-input input[type="password"],
  .w3l-login .form-input input[type="text"] {
      background: #fff;
      border: none;
      outline: none;
      width: 100%;
      font-size: 16px;
      padding: 18px;
      color: #000;
      -webkit-appearance: none;
      border: 1px solid #eee;
      border-radius: 4px;
  }

  .w3l-login .form-input input[type="email"]:focus,
  .w3l-login .form-input input[type="password"]:focus,
  .w3l-login .form-input input[type="text"]:focus {
      background: #fff;
      color:#ff8c00 ;
      border: 1px solid #ff8c00 ;
      border-radius: 4px;
  }

  .w3l-login .form-input {
      margin: 10px 0 10px 0;
      background: rgba(249, 250, 255, 0.09);
      display: grid;
      align-items: center;
      border: 1px solid #ff8c00 ;
      border-radius: 4px;
  }

  .w3l-login .checkbox {
      width: 16px;
      height: 16px;
      color: #ff8c00 ;
      background: #ff8c00 ;
      float: left;
  }

  .w3l-login p.remember {
      line-height: 20px;
      color: #5a5a5a;
      font-size: 13px;
  }

  .w3l-login .new-signup a {
      font-size: 15px;
      margin-top: 30px;
      display: block;
      color: #5a5a5a;
      text-align: center;
  }

  .w3l-login p.signup a:hover {
      text-decoration: underline;
  }

  .w3l-login p.signup a {
      font-weight: bold;
      color: #ff8c00 ;
  }

  .w3l-login .new-signup a:hover {
      text-decoration: underline;
  }

  .w3l-login p.signup {
      color: #5a5a5a;
      font-size: 15px;
      display: block;
      margin-top: 20px;
      padding-top: 20px;
      text-align: center;
      border-top: 1px solid #dcdcdc;
  }

  .w3l-login .social-icons {
      display: grid;
      grid-gap: 10px;
      align-items: center;
  }

  .w3l-login .continue {
      position: relative;
      border-top: 1px solid #eee;
      margin: 20px 0;
  }

  .w3l-login button.btn1 {
      opacity: 0.8;
      width: 100%;
  }

  .w3l-login button.btn1:hover {
      opacity: 1;
  }

  .w3l-login .check-remaind input {
      position: absolute;
      opacity: 0;
      cursor: pointer;
      height: 0;
      width: 0;
  }

  .w3l-login .check-remaind {
      display: block;
      position: relative;
      padding-left: 25px;
      cursor: pointer;
      margin: 20px 0px 0 0;
      font-size: 20px;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
  }

  .w3l-login .check-remaind input {
      position: absolute;
      opacity: 0;
      cursor: pointer;
      height: 0;
      width: 0;
  }

  .w3l-login .checkmark {
      position: absolute;
      top: 0px;
      left: 0;
      height: 18px;
      width: 18px;
      background-color:#ff8c00 ;
  }

  .w3l-login .ccheck-remaind:hover input~.checkmark {
      background-color: #ff8c00 ;
  }

  .w3l-login .check-remaind input:checked~.checkmark {
      background-color:#ff8c00 ;
  }

  .w3l-login .checkmark:after {
      content: "";
      position: absolute;
      display: none;
  }

  .w3l-login .check-remaind input:checked~.checkmark:after {
      display: block;
  }

  .w3l-login .check-remaind .checkmark:after {
      left: 6px;
      top: 3px;
      width: 4px;
      height: 8px;
      border: solid white;
      border-width: 0 2px 2px 0;
      transform: rotate(45deg);
  }

  .theme-button1 {
      transition: 0.3s ease-out;
      display: inline-block;
      line-height: 52px;
      font-weight: 700;
      font-size: 14px;
      margin: 0px;
      padding: 0px 30px;
      text-transform: uppercase;
      border: none;
      background-color:#ff8c00 ;
      color: #fff;
      border-radius: 4px;
      margin-top: 20px;
  }


  /*  copyright */
  .copy-right {
      position: absolute;
      left: 0;
      right: 0;
      bottom:0;
      top:550px;
      color:#ff8c00 ;
  }

  .copy-right p {
      color: #ff8c00;
      font-size: 14px;
      line-height: 22px;
      text-align: center;
      padding: 0 15px;
  }

  .copy-right p a {
      color: #ff8c00;
      font-size: 16px;
      text-decoration: underline;
  }

  .copy-right p a:hover {
      text-decoration: none;
  }

  @media (max-width: 767px) {
      .copy-right {
          bottom: 5px;
      }
  }

  /*  /copyright */

  @media (max-width: 1080px) {
      .w3l-login .overlay {
          padding: 20px 0px;
      }
  }

  @media (max-width: 414px) {
      .w3l-login .form-section h3 {
          font-size: 32px;
      }
  }

  
  @-webkit-keyframes animStar {
      from {
          transform: translateY(0px);
      }

      to {
          transform: translateY(-2000px);
      }
  }

  @keyframes animStar {
      from {
          transform: translateY(0px);
      }

      to {
          transform: translateY(-2000px);
      }
  }
            </style>
            
   
   