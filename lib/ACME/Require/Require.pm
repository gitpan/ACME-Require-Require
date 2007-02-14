package ACME::Require::Require;

use warnings;
use strict;
use Carp;

use version; our $VERSION = qv('0.0.1');

sub import {
    croak 'This module must used with require' . "\n";
}

1; # Magic true value required at end of module
__END__

=head1 NAME

ACME::Require::Require - Disallow the use of use.


=head1 VERSION

This document describes ACME::Require::Require version 0.0.1


=head1 SYNOPSIS

    package MyModule;
    use base ACME::Require::Require;

    sub hello {
        print 'Hello World' ."\n";
    }

    package main;
    
    BEGIN {
        eval { use MyMODULE }; # This gives an error.
    }

    require MyMODULE; # Works as expected

    MyMODULE::hello();

    __END__

=head1 DESCRIPTION

This module is totaly usless. I just had to write it so I could move on.
All it does is to stop you stop people from useing C<use> with your module.

In you module just add: use base ACME::Require::Require;

=head1 AUTHOR

Robert Boone  C<< <rlb@cpan.org> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2007, Robert Boone C<< <rlb@cpan.org> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
