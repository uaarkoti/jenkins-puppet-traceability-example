1. create a sample maven Java job that checks out source code and builds it
2. Create Java job
		java -jar jenkins-cli.jar -s http://localhost:8081/ create-job PuppetJavaJob < java-job-config.xml
3. Create Trigger job
		java -jar jenkins-cli.jar -s http://localhost:8081/ create-job TriggerJobOnPuppetDeploy < trigger-job-config.xml
