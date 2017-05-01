class profile::apach(
  Boolean $default_vhost = false,
  Integer $port          = 80,
  String $docroot        = '/var/www/test',
){
   class {'::apache':
     default_vhost => $default_vhost,
   }
   
   ::apache::vhost { 'sniperlok3.mylabserver.com':
     port    => $port,
     docroot => $docroot,
   }
}
