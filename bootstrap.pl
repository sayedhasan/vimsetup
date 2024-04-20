#!/usr/bin/env perl

use strict;
use warnings;
use File::Path;
use File::Copy;
use File::Basename;
use Cwd;

my $HTTP_PROXY = "";

# --- bootstrap vundle
print "getting bundle ...\n";
system( "git clone http://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim" );
if ($? ne '0') {
  print "failed to clone vundle. Try using it manually.\n";
  print "git clone http://github.com/gmarik/vundle.git\n";
}

exit 0;
