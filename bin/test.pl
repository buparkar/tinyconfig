#!/usr/bin/perl -w
#
# yam1.pl
use strict;
use warnings;
use Data::Dumper;

use YAML;

# step 1: open file
open my $fh ,'<', 'db1.yml'  ||  die "Failed to open puppetdb.yaml file, $!";
# step 2: slurp file contents
my $config =  YAML::LoadFile($fh);
print Dump( $config ), "\n";
$fh->close();
$fh = undef;
$config = undef;
