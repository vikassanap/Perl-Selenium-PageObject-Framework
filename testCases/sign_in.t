#!/usr/bin/perl
use strict;
use warnings;

use config::base_page;

my $sel = Test::WWW::Selenium->new( host => "localhost",
                                  port => 4444,
                                  browser => "*chrome",
                                  browser_url => "http://application-url.com/",
                                );

$sel->open_ok("/sign-in");
$sel->window_maximize();
$sel->set_speed_ok(4000);
$sel->type_ok(new sign_in_page->{user_email},'hrentalroost@yahoo.com');
$sel->type_ok(new sign_in_page->{user_password},'hrental123');
$sel->click_ok(new sign_in_page->{submit});
$sel->click_ok(new user_home_page->{hello_user});
$sel->click_ok(new user_home_page->{logout_link});
