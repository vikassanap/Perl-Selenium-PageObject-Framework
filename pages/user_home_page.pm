package user_home_page;

use strict;
use warnings;

sub new
{
    my $class = shift;
    my $self = {};

    bless $self, $class;

    my $hello_user = "id=myacc1";
    my $logout_link = "link=Sign Out";

    $self->{'hello_user'} = $hello_user;
    $self->{'logout_link'} = $logout_link;
 
    return $self;
}1;

