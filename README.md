To deploy a wordpress application using mysql database in kubernetes cluster.  Create wordpress dockerimage using Dockerfile. Define env variables for database credentials in Dockerfile to 
take the values dynamically. Use secrets to store sensitive information like database credentials.
To check the env values are taken dynamically below are the sql queries

=>This is mysql container cmd
 # docker run -dit --name c1(container-name) -p81:3306 -e MYSQL_DATABASE=mydb -e MYSQL_USER=admin -e MYSQL_PASSWORD=welcome123 
  -e MYSQL_ROOT_PASSWORD=welcome123 mysql:latest(default image)
  
 
=>This is wordpress application container cmd
  # docker run -dit --name c2(container-name) -p82:80 -e DB_USER=admin -e DB_PASSWORD=welcome123 -e DB_NAME=wordpress
   -e DB_HOST=c1(this mysql container name):3306 --link c1(this mysql container name):c2(This is wordpress container name) wordpressimage(custom image meeru build chesina image)   
