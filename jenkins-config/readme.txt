1. create a sample maven Java job that checks out source code and builds it
2. Deploy job
   java -jar PATH/TO/jenkins-cli.jar -s http://localhost:8080/ create-job PuppetSample < config.xml
3. Enable job
   java -jar PATH/TO/jenkins-cli.jar -s http://localhost:8080/ enable-job PuppetSample 
