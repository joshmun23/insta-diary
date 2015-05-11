<strong>5/11</strong><br>
  - make_it_so rails <app_name><br>
  - add 'dotenv' to Gemfile<br>
  - register new application with Instagram<br>
  -retrieve client ID, Secret, and redirect_uri then put into .env file<br>
  - add .env to .gitignore<br>
  - added to topbar: if user signed in, authenticate with IG<br>
  - added scope permissions to params in redirect URI to access basic user information<br>
  - in homes controller index(redirect uri), create conditional if statement to access the IG token after authentication<br>
