package Fey::SQL::Except;

use strict;
use warnings;

our $VERSION = '0.34';

use Moose;

with 'Fey::Role::SetOperation' => { keyword => 'EXCEPT' };

with 'Fey::Role::SQL::Cloneable';

no Moose;

1;

=head1 NAME

Fey::SQL::Except - Represents an EXCEPT operation

=head1 SYNOPSIS

  my $except = Fey::SQL->new_except;

  $except->except(
    Fey::SQL->new_select->select(...),
    Fey::SQL->new_select->select(...),
    Fey::SQL->new_select->select(...),
    ...
  );

  $except->order_by( $part_name, 'DESC' );
  $except->limit(10);

  print $except->sql($dbh);

=head1 DESCRIPTION

This class represents an EXCEPT set operator.

=head1 METHODS

See L<Fey::Role::SetOperation> for all methods.

=head1 ROLES

=over 4

=item * L<Fey::Role::SetOperation>

=item * L<Fey::Role::SQL::Cloneable>

=back

=head1 AUTHOR

Hans Dieter Pearcey, <hdp.cpan.fey@weftsoar.net>

=head1 BUGS

See L<Fey> for details on how to report bugs.

=head1 COPYRIGHT & LICENSE

Copyright 2009 Dave Rolsky, All Rights Reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
