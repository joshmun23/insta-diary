<h3><a href="https://insta-diary.herokuapp.com">Insta-Diary</a></h3>
<br>
<strong>5/11</strong><br>
  - make_it_so rails <app_name><br>
  - add 'dotenv' to Gemfile<br>
  - register new application with Instagram<br>
  - retrieve client ID, Secret, and redirect_uri then put into .env file<br>
  - add .env to .gitignore<br>
  - added to topbar: if user signed in, authenticate with IG<br>
  - added scope permissions to params in redirect URI to access basic user information<br>
  - in homes controller index(redirect uri), create conditional if statement to access the IG token after authentication<br>
  - add curl request in homes controller to retrieve access token
    MORE INFO ON CURL: https://github.com/taf2/curb<br>
  - add column to users table for access_token<br>
  - after authentication, save access token to current_user in homes_controller#index
  - install <a href="https://github.com/heroku/rails_12factor">rails_12factor</a>
  and <a href="https://github.com/heroku/rails_serve_static_assets">rails_serve_static_assets</a> gems for heroku deployment
  - deployed to heroku, set config variables in heroku for client id + secret
  - modified instagram redirect URI on instagram website to reflect heroku url
