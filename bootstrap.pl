#!/usr/bin/env perl

use strict;
use warnings;

my $HTTP_PROXY = "http_proxy=http://proxy.fm.intel.com:911";

# --- bootstrap vundle
print "getting bundle ...\n";
system( "git clone http://github.com/gmarik/vundle.git bundle/vundle" );
if ($? ne '0') {
  print "failed to clone vundle. Try using it manually.\n";
  print "git clone http://github.com/gmarik/vundle.git\n";
}

# --- get visualstudio colorscheme
print "\n\ngetting visualstudio colorscheme ...\n";
`mkdir -p colors`;
`env $HTTP_PROXY wget -O colors/visualstudio.vim "http://www.vim.org/scripts/script.php?script_id=4680"`;


# --- get tcl systax and color stuff
print "\n\ngetting tcl syntax and coloring ...\n";
`mkdir -p indent`;
`mkdir -p syntax`;
`env $HTTP_PROXY wget -O indent/tcl.vim        "http://www.vim.org/scripts/download_script.php?src_id=6740"`;
`env $HTTP_PROXY wget -O syntax/tcl.vim        "http://www.vim.org/scripts/download_script.php?src_id=7049"`;
`env $HTTP_PROXY wget -O syntax/tcl_itcl.vim   "http://www.vim.org/scripts/download_script.php?src_id=6610"`;
`env $HTTP_PROXY wget -O syntax/tcl_critcl.vim "http://www.vim.org/scripts/download_script.php?src_id=6649"`;

exit 0;
