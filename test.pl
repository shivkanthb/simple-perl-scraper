#!/usr/bin/perl5
use LWP::Simple;
use DBI;
use LWP::Simple;
use WWW::Mechanize;
my $mech = WWW::Mechanize->new(agent => "Firefox/24.01");
my $dbh = DBI->connect(
"dbi:mysql:dbname=mydb",
"root",
"",
{ RaiseError => 1 },
) or die $DBI::errstr;

my $agent = LWP::UserAgent->new(env_proxy => 1,keep_alive => 1, timeout => 10);
my $url="http://sunrisesunset.com";
$mech->get($url);
$str= $mech->content;
#print "success";

#print $str;
my $header = HTTP::Request->new(GET => $url); 
my $request = HTTP::Request->new('GET', $url, $header); 
my $response = $agent->request($request); 
#$proxy = 'http://proxy.ssn.net:8080';
#my $ua=new LWP::UserAgent;
#$ua->proxy(['http', 'https'], $proxy);



$obtain1 = substr($str,49550,3780);
$obtain2 = substr($str,49776,19);
$obtain3 = substr($str,50630,15);
$obtain4 = substr($str,51633,20);
$obtain5 = substr($str,52386,19);
$obtain6 = substr($str,52960,12);
print $obtain2;
print "\n";
print $obtain3;
print "\n";
print $obtain4;
print "\n";
print $obtain5;
print "\n";
print $obtain6;
print "\n";
my $myfile = '/var/www/perl/file1.html';
open(FILE, "> $myfile") || die "Could not open $myfile: $!\n";
print FILE '<html><body><center><b><i><u><br/><br/>';
print FILE 'Information Retrieved are as follows => :';
print FILE '</b><u></i><br/><br/></center></body></html>';
print FILE $obtain1;
close(FILE);
$sql1 = "insert into country values('$obtain2')";
$sql2 = "insert into country values('$obtain3')";
$sql3 = "insert into country values('$obtain4')";
$sql4 = "insert into country values('$obtain5')";
$sql5 = "insert into country values('$obtain6')";
my $dbvar = $dbh->prepare($sql1);$dbvar->execute();
my $dbvar1 = $dbh->prepare($sql2);$dbvar1->execute();
my $dbvar2 = $dbh->prepare($sql3);$dbvar2->execute();
my $dbvar3 = $dbh->prepare($sql4);$dbvar3->execute();
my $dbvar4 = $dbh->prepare($sql5);$dbvar4->execute();

