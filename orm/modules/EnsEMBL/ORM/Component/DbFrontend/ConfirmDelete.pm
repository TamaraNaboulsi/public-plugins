package EnsEMBL::ORM::Component::DbFrontend::ConfirmDelete;

use strict;
use warnings;
no warnings "uninitialized";
use base qw(EnsEMBL::ORM::Component::DbFrontend);
use EnsEMBL::Web::Form;

sub _init {
  my $self = shift;
  $self->cacheable( 0 );
  $self->ajaxable(  0 );
}

sub caption {
  my $self = shift;
  return 'Confirm Deletion';
}

sub content {
  my $self = shift;
  my $object = $self->object;

  my $form = EnsEMBL::Web::Form->new('confirm', '/'.$self->script_name.'/Delete', 'post');;

  ## navigation elements
  $form->add_element( 'type' => 'Information', 'value' => 'Are you sure you want to delete this group?');
  $form->add_element( 'type' => 'Hidden', 'name' => 'id', 'value' => $object->param('id'));
  $form->add_element( 'type' => 'Submit', 'value' => 'Delete');

  return $form->render;
}

1;
