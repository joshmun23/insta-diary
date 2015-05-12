<h3><a href="https://insta-diary.herokuapp.com">Insta-Diary</a></h3>
<br>
<strong>5/11</strong><br>
  <ul>
  <li>make_it_so rails <app_name></li>
  <li>add 'dotenv' to Gemfile</li>
  <li>register new application with Instagram</li>
  <li>retrieve client ID, Secret, and redirect_uri then put into .env file</li>
  <li>add .env to .gitignore</li>
  <li>added to topbar: if user signed in, authenticate with IG</li>
  <li>added scope permissions to params in redirect URI to access basic user information</li>
  <li>in homes controller index(redirect uri), create conditional if statement to access the IG token after authentication</li>
  <li>add curl request in homes controller to retrieve access token
    MORE INFO ON CURL: https://github.com/taf2/curb</li>
  <li>add column to users table for access_token</li>
  <li>after authentication, save access token to current_user in homes_controller#index</li>
  <li>install <a href="https://github.com/heroku/rails_12factor">rails_12factor</a>
  and <a href="https://github.com/heroku/rails_serve_static_assets">rails_serve_static_assets</a> gems for heroku deployment</li>
  <li>deployed to heroku, set config variables in heroku for client id + secret</li>
  <li>modified instagram redirect URI on instagram website to reflect heroku url</li>
  </ul>
<br>
<strong>5/12</strong><br>
  <h4>How to use the app</h4>
  <ul>
    <li>Sign up/Sign in at the right section of the top bar</li>
    <li>Authenticate with IG once signed in at the right section of the top bar</li>
    <li></li>
  </ul>
