#!/usr/bin/perl
use LWP::Simple;
use WWW::Mechanize;
my $mech = WWW::Mechanize->new(agent => "Firefox/24.01");
my $url="http://sunrisesunset.com";
$mech->get($url);
$str= $mech->content;
print "success";

print $str;
