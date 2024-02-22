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

<<<<<<< HEAD
=======
# # --- get visualstudio colorscheme
# print "\n\ngetting visualstudio colorscheme ...\n";
# `mkdir -p colors`;
# # `env $HTTP_PROXY wget -O colors/visualstudio.vim "http://www.vim.org/scripts/script.php?script_id=4680"`;
# `env $HTTP_PROXY wget -O colors/visualstudio.tar.gz "http://www.vim.org/scripts/download_script.php?src_id=20598"`;
#
# # --- get tcl systax and color stuff
# print "\n\ngetting tcl syntax and coloring ...\n";
# mkpath("indent"); # same as mkdir -p
# mkpath("syntax");
# `env $HTTP_PROXY wget -O indent/tcl.vim        "http://www.vim.org/scripts/download_script.php?src_id=6740"`;
# `env $HTTP_PROXY wget -O syntax/tcl.vim        "http://www.vim.org/scripts/download_script.php?src_id=7049"`;
# `env $HTTP_PROXY wget -O syntax/tcl_itcl.vim   "http://www.vim.org/scripts/download_script.php?src_id=6610"`;
# `env $HTTP_PROXY wget -O syntax/tcl_critcl.vim "http://www.vim.org/scripts/download_script.php?src_id=6649"`;
# mkpath("plugin");
# `env $HTTP_PROXY wget -O plugin/shim.vim "http://www.vim.org/scripts/download_script.php?src_id=20377"`;
#
# # mkpath("download");
# # `env $HTTP_PROXY wget -O download/taglist.zip "http://www.vim.org/scripts/download_script.php?src_id=19574"`;
# # mkpath("bundle/vim-taglist");
# # `mv download/taglist.zip bundle/vim-taglist/`;
# # chdir("bundle/vim-taglist");
# # `unzip taglist.zip`;

>>>>>>> 89a194c (Updating bootstraping)
exit 0;
