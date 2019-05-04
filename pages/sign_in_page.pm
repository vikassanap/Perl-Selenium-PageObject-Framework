package sign_in_page;

use strict;
use warnings;

sub new
{
    my $class = shift;
    my $self = {};

    bless $self, $class;

    my $user_email = "id=user_email";
    my $user_password = "id=user_password";
    my $submit = "id=sign";

    $self->{'user_email'} = $user_email;
    $self->{'user_password'} = $user_password;
    $self->{'submit'} = $submit;
 
    return $self;
}1;

