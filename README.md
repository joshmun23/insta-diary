5/11 - make_it_so rails <app_name>
     - add 'dotenv' to Gemfile
     - register new application with Instagram
        -retrieve client ID, Secret, and redirect_uri then put into .env file
     - add .env to .gitignore
     - added to topbar: if user signed in, authenticate with IG
     - added scope permissions to params in redirect URI to access basic user information
     - in homes controller index(redirect uri), create conditional if statement to access the IG token after authentication
