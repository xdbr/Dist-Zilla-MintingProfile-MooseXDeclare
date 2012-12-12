package Dist::Zilla::MintingProfile::MooseXDeclare;

# ABSTRACT: A minting profile for Modules written with MooseX::Declare

use Moose;
use namespace::autoclean;
with 'Dist::Zilla::Role::MintingProfile::ShareDir';
 
__PACKAGE__->meta->make_immutable;

=begin wikidoc

= SYNOPSIS

    dzil new -P MooseXDeclare -p App New::App

or

    dzil new -P MooseXDeclare New::App

This is a minting profile for projects using MooseX::Declare.

It comes in two flavors: one for Apps (with more boilerplate stuff) and one for "regular" classes.

= BUGS AND LIMITATIONS
Unfortunately, in the App-flavored Minting Process,
I can't get [Dist::Zilla] to create my favorite structure
exactly as I want it, so you need to run
`mkdir -p lib/New/App/{Command,Types}; touch $_.pm` after the `dzil new` call.

(From there copy paste stuff from lib/New/App.pm to the correct places)

Additionally, I can't get [Dist::Zilla] to carry out the
substituion of `New::App` for `{{$name}}` in the minting process
across more that one file. Sorry about that and any inconveniences
this may cause you -- patches and hints are welcome!



=end wikidoc

=cut

1;
