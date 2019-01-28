#!/usr/bin/perl 
#
#
use strict;
use warnings;
use JSON qw( decode_json );
use Data::Dumper ;
my $filename = 'p1.json';

my $json_text = do {
   open(my $json_fh, "<:encoding(UTF-8)", $filename)
      or die("Can't open \$filename\": $!\n");
   local $/;
   <$json_fh>
};

my $json = JSON->new;
my $data = $json->decode($json_text);

print Dumper( $data), "\n";
