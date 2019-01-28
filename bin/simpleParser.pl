#!/usr/bin/perl -w

use strict;
use YAML::Tiny;
 
# Open the config
my $yaml = YAML::Tiny->read( 'file.yml' );
#  
#  # Get a reference to the first document
my $config = $yaml->[0];
#   
#   # Or read properties directly
my $root = $yaml->[0]->{rootproperty};
my $one  = $yaml->[0]->{section}->{one};
my $Foo  = $yaml->[0]->{section}->{Foo};
#    
