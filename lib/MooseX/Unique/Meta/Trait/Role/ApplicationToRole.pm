#
# This file is part of MooseX-Unique
#
# This software is copyright (c) 2011 by Edward J. Allen III.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
use strict; use warnings;
package MooseX::Unique::Meta::Trait::Role::ApplicationToRole;
BEGIN {
  $MooseX::Unique::Meta::Trait::Role::ApplicationToRole::VERSION = '0.004';
}
BEGIN {
  $MooseX::Unique::Meta::Trait::Role::ApplicationToRole::AUTHORITY = 'cpan:EALLENIII';
}
#ABSTRACT:  MooseX::Unique helper module
use Moose::Role;
use Moose::Util::MetaRole;

around apply => sub {
    my ( $orig, $self, @args ) = @_;
    $self->$orig( @args );
    if ($args[0]->can('apply_match_attributes_to_class')) {
        $args[0]->apply_match_attributes_to_class($args[1]);
    }
    return $args[1];
};

1;


=pod

=for :stopwords Edward Allen J. III BUILDARGS params readonly MetaRole metaclass

=encoding utf-8

=head1 NAME

MooseX::Unique::Meta::Trait::Role::ApplicationToRole - MooseX::Unique helper module

=head1 VERSION

  This document describes v0.004 of MooseX::Unique::Meta::Trait::Role::ApplicationToRole - released June 22, 2011 as part of MooseX-Unique.

=head1 SYNOPSIS

See L<MooseX::Unique|MooseX::Unique>;

=head1 DESCRIPTION

Helps when MooseX::Unique is used in role context.

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<MooseX::Unique|MooseX::Unique>

=back

=head1 AUTHOR

Edward Allen <ealleniii@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Edward J. Allen III.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT
WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER
PARTIES PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE
SOFTWARE IS WITH YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME
THE COST OF ALL NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE LIABLE
TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE
SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGES.

=cut


__END__

