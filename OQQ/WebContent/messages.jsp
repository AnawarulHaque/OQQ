<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Messages</title>
    <link rel="icon" href="logo.png" type="image/x-icon">
    <style>
        *{

         margin: auto auto; 
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, Helvetica, sans-serif;
        }
      .popup{
        width: 400px;
      background-color: rgb(208, 248, 242);
      border-radius: 6px;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%,-50%);
      text-align: center;
      padding: 0 30px 30px;
      color: #333;  
      }
      .popup img{
      width: 80px;
      margin-top: -50px;
      border-radius: 50%;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
      }
      .popup h1{
        font-size: 30px;
        font-weight: 500;
        margin: 30px 0 10px;
      }
      .popup button {
        width:100%;
        margin-top: 50px;
        padding: 10px 0;
        background: #6fd649;
        color: #fff;
        border: 0;
        outline: none;
        font-size: 18px;
        border-radius: 4px;
        cursor: pointer;
        box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
      }
      .popup  a{
        color: #f2f2f2;
        overflow: hidden;
        text-decoration: none;
      }
      .popup button:hover{
        background-color: green;
        color: white;
      }
      </style>
<script>
      function Messages()
      {
      window.location = "login.jsp";
      }
</script>
        </head>
        <body>
          <div class="popup" id="Popup" ondblclick="openPoppup()">
        <img src="2.png" alt="">
      <h1>You Welcome!</h1>  
      <p> You details has been successfully submitted.Thanks! </p>
      <button id="submit" class="btn" target="_blank" name="messages" onclick="Messages()">Continue</button>
        
      </div>
</body>
</html>