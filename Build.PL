#! /usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
  if 0;
use strict;
use warnings;
use utf8;
use autodie;
our $VERSION = '0.1';

use Module::Build;

Module::Build->new(
    dist_name         => 'App-ccdiff',
    dist_version_from => 'bin/ccdiff',
    requires          => { 'Algorithm::Diff' => 0 },
    recommends        => { 'Unicode::EastAsianWidth' => 0 },
)->create_build_script;
