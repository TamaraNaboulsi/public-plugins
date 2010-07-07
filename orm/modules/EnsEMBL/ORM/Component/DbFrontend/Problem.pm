package EnsEMBL::ORM::Component::DbFrontend::Problem;

### Module to create generic data display for Interface and its associated modules

use strict;
use warnings;
no warnings "uninitialized";
use base qw(EnsEMBL::ORM::Component::DbFrontend);

sub _init {
  my $self = shift;
  $self->cacheable( 0 );
  $self->ajaxable(  0 );
}

sub content {
### Displays a record or form input as non-editable text,
### and also passes the data as hidden form elements
  my $self = shift;

  my $html = qq(<p>Sorry, there was a problem saving your data to the database. Please try again later.</p>);
  return $html;
}

1;
