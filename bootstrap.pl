#!/usr/bin/env perl

use strict;
use warnings;

chdir( "bundle" );
system( "git clone http://github.com/gmarik/vundle.git" );
if ($? ne '0') {
  print "failed to clone vundle. Try using it manually.\n";
  print "git clone http://github.com/gmarik/vundle.git\n";
}

return 0;
