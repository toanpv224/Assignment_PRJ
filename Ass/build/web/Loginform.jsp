<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>TYL Clothing</title>
    <link rel="stylesheet" href="CSS/Loginstyle.css" />
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
    />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <div class="wrapper">
      <div class="title-text">
        <div class="title login">Login Form</div>
        <div class="title signup">Signup Form</div>
      </div>
      <div class="form-container">
        <div class="slide-controls">
          <input type="radio" name="slide" id="login" checked />
          <input type="radio" name="slide" id="signup" />
          <label for="login" class="slide login">Login</label>
          <label for="signup" class="slide signup">Signup</label>
          <div class="slider-tab"></div>
        </div>
        <div class="form-inner">
          <form action="login" class="login" method="post">
              <p class="text-danger">${requestScope.mess}</p>
            <div class="input-box">
                <input name="user" type="text" spellcheck="false" required />
                <label for="">Username</label>
            </div>
            <div class="input-box">
              <input class="p-input" name="pass" type="password" spellcheck="false" required />
              <label for="">Password</label>
              <i class="uil uil-eye-slash toggle"></i>
            </div>
            <div class="pass-link">
              <input
                name="remember"
                value="1"
                type="checkbox"
                class="form-check-input"
                id="exampleCheck1"
              />
              <label class="form-check-label" for="exampleCheck1"
                >Remember me</label
              >
            </div>
            <div class="field btn">
              <div class="btn-layer"></div>
              <input type="submit" value="Login" />
            </div>
            <div class="signup-link">
              Not a member? <a href="">Signup now</a>
            </div>
          </form>
          <form action="#" class="signup">
            <div class="field">
              <input type="text" placeholder="Email Address" required />
            </div>
            <div class="field">
              <input type="password" placeholder="Password" required />
            </div>
            <div class="field">
              <input type="password" placeholder="Confirm password" required />
            </div>
            <div class="field btn">
              <div class="btn-layer"></div>
              <input type="submit" value="Signup" />
            </div>
          </form>
        </div>
      </div>
    </div>
    <script>
      const loginText = document.querySelector(".title-text .login");
      const loginForm = document.querySelector("form.login");
      const loginBtn = document.querySelector("label.login");
      const signupBtn = document.querySelector("label.signup");
      const signupLink = document.querySelector("form .signup-link a");
      signupBtn.onclick = () => {
        loginForm.style.marginLeft = "-50%";
        loginText.style.marginLeft = "-50%";
      };
      loginBtn.onclick = () => {
        loginForm.style.marginLeft = "0%";
        loginText.style.marginLeft = "0%";
      };
      signupLink.onclick = () => {
        signupBtn.click();
        return false;
      };

      const toggle = document.querySelector(".toggle"),
        input = document.querySelector(".p-input");

      toggle.addEventListener("click", () => {
        if (input.type === "password") {
          input.type = "text";
          toggle.classList.replace("uil-eye-slash", "uil-eye");
        } else {
          toggle.classList.replace("uil-eye", "uil-eye-slash");
          input.type = "password";
        }
      });
    </script>
  </body>
</html>
