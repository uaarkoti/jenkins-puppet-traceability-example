# manage filetest
class tomcat7 {

      package { 'wget':
      	      ensure => installed,
      }
      package { 'openjdk-7-jdk':
      	      ensure => installed, 
      }

      package { 'tomcat7':
      	      ensure => installed, 
      	      require => Package['openjdk-7-jdk'],
      }
      service { 'tomcat7':
      	      ensure => running, 
	      require => Package['tomcat7'],
      }

      exec { 'sample-war':
      	      require => [ 
	      	      Service['tomcat7'], 
		      Package['wget']
	      ],
	      command => 'wget http://10.0.2.2:8080/job/PuppetJavaSample/lastSuccessfulBuild/artifact/target/traceability.war -P /tmp/',
	      path => ['/usr/bin'],
      }

      exec { 'delete-war-from-webapps':
	      command => 'rm -rf /var/lib/tomcat7/webapps/traceability*',
	      path => ['/bin'],
      }

      file { '/var/lib/tomcat7/webapps/traceability.war':
      	   source => '/tmp/traceability.war',
	   require => Exec['sample-war', 'delete-war-from-webapps'],
      }
}