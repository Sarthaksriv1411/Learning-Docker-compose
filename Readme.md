## Docker installation
    - Install Docker 
    -Start postgres
    -docker run -e POSTGRES_PASSWORD=Sarthak14 -d -p 5432:5432 postgres
    -docker build --network=host -t user_project .
    -docker run -p 3000:3000 user_project