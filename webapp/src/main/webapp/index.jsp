<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Contact — User Information</title>
    <style>
        :root{
            --bg:#f4f7fb;
            --card:#ffffff;
            --accent:#4f46e5;
            --muted:#6b7280;
            --radius:12px;
        }
        html,body{height:100%;}
        body{
            margin:0; font-family:Inter, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
            background:linear-gradient(180deg, #eef2ff 0%, var(--bg) 100%);
            color:#111827; display:flex; align-items:center; justify-content:center; padding:48px 16px;
        }
        .container{
            width:100%; max-width:820px; margin:0 auto;
        }
        .card{
            background:var(--card); border-radius:var(--radius); box-shadow:0 6px 24px rgba(15,23,42,0.08);
            padding:28px; display:grid; gap:18px;
        }
        h1{margin:0; font-size:1.25rem}
        p.lead{margin:0; color:var(--muted); font-size:0.95rem}

        form{display:grid; gap:14px;}
        .grid{
            display:grid; gap:14px;
        }
        @media(min-width:700px){
            .grid{grid-template-columns:1fr 1fr}
        }

        label{display:block; font-size:0.9rem; margin-bottom:6px; color:#111827}
        input[type="text"], input[type="email"], textarea{
            width:100%; box-sizing:border-box; padding:10px 12px; border:1px solid #e6edf3; border-radius:8px;
            font-size:0.95rem; background:#ffffff; transition:box-shadow .12s, border-color .12s;
        }
        input:focus, textarea:focus{outline:none; border-color:var(--accent); box-shadow:0 0 0 4px rgba(79,70,229,0.08)}

        .actions{display:flex; gap:12px; align-items:center; margin-top:6px}
        button[type="submit"]{
            background:linear-gradient(90deg,var(--accent),#7c3aed); color:#fff; border:none; padding:10px 16px; border-radius:10px;
            cursor:pointer; font-weight:600; box-shadow:0 6px 18px rgba(79,70,229,0.18);
        }
        button[type="submit"]:hover{transform:translateY(-1px)}

        .note{font-size:0.85rem; color:var(--muted)}
        .field-row{display:flex; flex-direction:column}
    </style>
</head>
<body>

    <div class="container">
        <div class="card" role="region" aria-labelledby="contact-heading">
            <div>
                <h1 id="contact-heading">Contact Us</h1>
                <p class="lead">Send a message and we'll get back to you within 13 business days.</p>
            </div>

            <form action="/submit-data" method="POST" novalidate>
                <div class="grid">
                    <div class="field-row">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="user_name" placeholder="Enter name" required autocomplete="name">
                    </div>

                    <div class="field-row">
                        <label for="mail">Email</label>
                        <input type="email" id="mail" name="user_email" placeholder="name@example.com" required autocomplete="email">
                    </div>
                </div>

                <div class="field-row">
                    <label for="msg">Message</label>
                    <textarea id="msg" name="user_message" rows="6" placeholder="How can we help?" required></textarea>
                </div>

                <div class="actions">
                    <button type="submit">Send Message</button>
                    <span class="note">All fields are required.</span>
                </div>
            </form>
        </div>
    </div>

    <script>
        // Simple enhancement: show native validation messages on submit
        (function(){
            const form = document.querySelector('form');
            form.addEventListener('submit', function(e){
                if(!form.checkValidity()){
                    // Let browser show built-in validation UI; prevent submission until fixed
                    e.preventDefault();
                    form.reportValidity();
                }
            });
        })();
    </script>

</body>
</html>
