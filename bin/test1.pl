# yam1.pl
use strict;
use warnings;

use YAML;

my $config = {
  'Node-01' => {
  'NAME' => 'webserver-01',
  'IP ADDRESS' => '10.0.10.1',
  'MODULES' => {
    'apache2' => {
		Version => '2.0',
        Config_files => {
        '../config/apache2/index.html' => '/var/www/html/index.html',
        '../config/php/apache2/port.conf' => '/etc/apache2/port.conf',
        },
     },
    'php' =>  {
        Version => '7.2',
        Config_files => {
        '../config/php/php.info' => '/var/www/html/php.info',
        '../config/php/apache2/php.ini' => '/etc/php/7.2/apache2/php.ini',
        },
    },
    'Curl' => {
       Version => '3.0',
    },
  },
  'Service' => {
     'apache2' => 'Start',
     },
 },
 'Node-02' => {
  'NAME' => 'webserver-02',
  'IP ADDRESS' => '10.0.10.2',
  'MODULES' => {
    'apache2' => {
		Version => '2.0',
        Config_files => {
        '../config/apache2/index.html' => '/var/www/html/index.html',
        '../config/php/apache2/port.conf' => '/etc/apache2/port.conf',
        },
    'php' =>  {
        Version => '7.2',
        Config_files => {
        '../config/php/php.info' => '/var/www/html/php.info',
        '../config/php/apache2/php.ini' => '/etc/php/7.2/apache2/php.ini',
        },
    },
    'Curl' => '3.0'
  },
 },
  'Service' => {
     'apache2' => 'Start',
     },
 },
 'Node-03' => {
  'NAME' => 'webserver-03',
  'IP ADDRESS' => '10.0.10.3',
  'MODULES' => {
    'apache2' => {
		Version => '2.0',
        Config_files => {
        '../config/apache2/index.html' => '/var/www/html/index.html',
        '../config/php/apache2/port.conf' => '/etc/apache2/port.conf',
        },
    'php' =>  {
        Version => '7.2',
        Config_files => {
        '../config/php/php.info' => '/var/www/html/php.info',
        '../config/php/apache2/php.ini' => '/etc/php/7.2/apache2/php.ini',
        },
    },
    'Curl' => '3.0'
  },
 },
  'Service' => {
     'apache2' => 'Start',
     },
},
};

print Dump( $config ), "\n";
