<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Soccer Club Sign Up</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

    body {
      margin: 0;
      height: 100vh;
      font-family: 'Roboto', sans-serif;
      background: #1e4d2b; /* Dark green */
      display: flex;
      justify-content: center;
      align-items: center;
      overflow: hidden;
      position: relative;
    }

    /* Subtle soccer ball pattern in background */
    body::before {
      content: "";
      position: absolute;
      top: 0; left: 0;
      width: 100%; height: 100%;
      background-image: url('https://cdn-icons-png.flaticon.com/512/2107/2107957.png');
      background-repeat: repeat;
      background-size: 100px 100px;
      opacity: 0.05;
      pointer-events: none;
      z-index: 0;
    }

    .signup-container {
      position: relative;
      background: white;
      border-radius: 15px;
      box-shadow: 0 12px 30px rgba(0,0,0,0.25);
      width: 700px;
      height: 420px;
      display: flex;
      overflow: hidden;
      z-index: 1;
    }

    /* Left image side */
    .image-side {
      flex: 1;
      background: url('soccer.jpeg') center center/cover no-repeat;
      border-top-left-radius: 15px;
      border-bottom-left-radius: 15px;
    }

    /* Right form side */
    .form-side {
      flex: 1;
      padding: 40px 50px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .form-side h2 {
      color: #1e4d2b;
      margin-bottom: 25px;
      font-weight: 700;
      letter-spacing: 2px;
    }

    .form-side input {
      width: 100%;
      padding: 14px 12px;
      margin: 10px 0;
      border: 2px solid #1e4d2b;
      border-radius: 8px;
      font-size: 16px;
      outline: none;
      transition: border-color 0.3s;
    }

    .form-side input:focus {
      border-color: #4caf50;
      box-shadow: 0 0 5px #4caf50;
    }

    .form-side button {
      width: 100%;
      background: #4caf50;
      color: white;
      padding: 14px 0;
      border: none;
      border-radius: 8px;
      font-size: 18px;
      font-weight: 700;
      cursor: pointer;
      margin-top: 15px;
      transition: background-color 0.3s;
    }

    .form-side button:hover {
      background: #388e3c;
    }

    .footer-text {
      margin-top: 15px;
      font-size: 14px;
      color: #1e4d2b;
      text-align: center;
    }

    .footer-text a {
      color: #4caf50;
      text-decoration: none;
      font-weight: 600;
    }

    .footer-text a:hover {
      text-decoration: underline;
    }

    /* Responsive adjustments */
    @media (max-width: 750px) {
      .signup-container {
        flex-direction: column;
        width: 90vw;
        height: auto;
      }

      .image-side {
        height: 200px;
        border-radius: 15px 15px 0 0;
      }

      .form-side {
        padding: 25px;
      }
    }
  </style>
</head>
<body>

  <div class="signup-container">
    <div class="image-side"></div>
    <div class="form-side">
      <h2>Soccer Club Sign Up</h2>
      <input type="text" placeholder="Full Name" required />
      <input type="email" placeholder="Email Address" required />
      <input type="password" placeholder="Password" required />
      <button>Join Now</button>
      <div class="footer-text">
        Already a member? <a href="#">Log In</a>
      </div>
    </div>
  </div>

</body>
</html>
