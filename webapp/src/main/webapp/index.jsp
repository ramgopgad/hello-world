<!DOCTYPE html>
<html>
<head>
    <title>HTML Form Example</title>
</head>
<body>

    <h2>User Information Form</h2>

    <form action="/submit-data" method="POST">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="user_name">
        </div>

        <div>
            <label for="mail">Email:</label>
            <input type="email" id="mail" name="user_email">
        </div>

        <div>
            <label for="msg">Message:</label>
            <textarea id="msg" name="user_message" rows="4"></textarea>
        </div>

        <div class="button">
            <button type="submit">Send Message</button>
        </div>
    </form>

</body>
</html>
