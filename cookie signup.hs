<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Cookie Cafe Sign Up</title>
  <style>
    body {
      margin: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: #fef6e4;
      overflow: hidden;
      font-family: 'Poppins', sans-serif;
    }

    /* Cookie background animation */
    .cookie {
      position: absolute;
      background: url('') no-repeat center/contain;
      opacity: 0.8;
      animation: fall linear infinite;
    }

    @keyframes fall {
      0% { transform: translateY(-60px) rotate(0deg); opacity: 1; }
      100% { transform: translateY(110vh) rotate(360deg); opacity: 0; }
    }

    /* Sign-up form container */
    .signup-container {
      position: relative;
      background: white;
      border-radius: 15px;
      padding: 40px;
      box-shadow: 0 15px 30px rgba(0,0,0,0.2);
      z-index: 10;
      width: 320px;
      text-align: center;
      animation: float 3s ease-in-out infinite;
    }

    @keyframes float {
      0%, 100% { transform: translateY(0px); }
      50% { transform: translateY(-10px); }
    }

    .signup-container h2 {
      margin-bottom: 20px;
      color: #6f4e37;
    }

    .signup-container input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 2px solid #d9a066;
      border-radius: 8px;
      outline: none;
      font-size: 14px;
    }

    .signup-container button {
      background: #d2691e;
      color: white;
      padding: 12px;
      width: 100%;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-size: 16px;
      transition: 0.3s;
      position: relative;
      overflow: hidden;
    }

    .signup-container button:hover {
      background: #a0522d;
      transform: scale(1.05);
    }

    .footer-text {
      margin-top: 10px;
      font-size: 13px;
      color: #8b5e3c;
    }

    /* Heart steam animation */
    .heart {
      position: absolute;
      color: #ff4d6d;
      font-size: 14px;
      opacity: 0.8;
      animation: rise 2s ease-out forwards;
      pointer-events: none;
    }

    @keyframes rise {
      0% { transform: translateY(0) scale(1); opacity: 1; }
      50% { transform: translateY(-30px) scale(1.2); opacity: 0.8; }
      100% { transform: translateY(-60px) scale(0.8); opacity: 0; }
    }
  </style>
</head>
<body>

  <!-- Cookie background -->
  <script>
    function createCookie() {
      const cookie = document.createElement('div');
      cookie.classList.add('cookie');
      document.body.appendChild(cookie);
      
      const size = Math.random() * 30 + 30; 
      cookie.style.width = `${size}px`;
      cookie.style.height = `${size}px`;

      cookie.style.left = `${Math.random() * 100}vw`;
      cookie.style.animationDuration = `${Math.random() * 5 + 5}s`;
      cookie.style.animationDelay = `${Math.random() * 5}s`;

      setTimeout(() => { cookie.remove(); }, 11000);
    }
    setInterval(createCookie, 500);
  </script>

  <!-- Sign up form -->
  <div class="signup-container">
    <h2>🍪 Cookie Cafe Sign Up</h2>
    <input type="text" placeholder="Full Name">
    <input type="email" placeholder="Email Address">
    <input type="password" placeholder="Password">
    <button id="signupBtn">Sign Up</button>
    <div class="footer-text">Already have an account? <a href="#">Login</a></div>
  </div>

  <script>
    const signupBtn = document.getElementById('signupBtn');

    signupBtn.addEventListener('mouseover', () => {
      const heart = document.createElement('div');
      heart.classList.add('heart');
      heart.innerHTML = '❤';
      signupBtn.appendChild(heart);

      const x = Math.random() * signupBtn.offsetWidth;
      heart.style.left = `${x}px`;
      heart.style.bottom = '5px';

      setTimeout(() => { heart.remove(); }, 2000);
    });

    // More hearts while hovering
    signupBtn.addEventListener('mouseenter', () => {
      heartInterval = setInterval(() => {
        const heart = document.createElement('div');
        heart.classList.add('heart');
        heart.innerHTML = '❤';
        signupBtn.appendChild(heart);

        const x = Math.random() * signupBtn.offsetWidth;
        heart.style.left = `${x}px`;
        heart.style.bottom = '5px';

        setTimeout(() => { heart.remove(); }, 2000);
      }, 300);
    });

    signupBtn.addEventListener('mouseleave', () => {
      clearInterval(heartInterval);
    });
  </script>

</body>
</html>
