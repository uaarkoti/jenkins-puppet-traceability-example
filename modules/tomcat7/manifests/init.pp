# manage filetest
class tomcat7 {
      package { 'openjdk-7-jdk':
      	      ensure => present, 
      }

      package { 'tomcat7':
      	      ensure => installed, 
      	      require => Package['openjdk-7-jdk'],
      }
      service { 'tomcat7':
      	      ensure => running, 
	      require => Package['tomcat7'],
      }
}