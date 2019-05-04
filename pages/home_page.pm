package home_page;

use strict;
use warnings;

sub new
{
    my $class = shift;
    my $self = {};

    bless $self, $class;

    my $login_link = "link=Login";

    $self->{'login_link'} = $login_link;
 
    return $self;
}1;

