sudo service tomcat8 stop
sudo cp target/shooter.war /var/lib/tomcat8/webapps/
sudo rm -rf /var/lib/tomcat8/webapps/shooter/
sudo service tomcat8 start
