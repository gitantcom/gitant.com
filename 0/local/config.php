<?php 
if (!defined('PmWiki')) exit();
include_once("scripts/xlpage-utf-8.php");
XLPage('zhcn','PmWikiZhCn.XLPage');
$WikiTitle = "Gitant.Com";
$PageLogoUrl = "http://example.com/mylogo.gif";

# Uncomment these if needed
#$ScriptUrl = 'http://example.com/pmwiki/pmwiki.php';
#$PubDirUrl = 'http://example.com/pmwiki/pub';

$DefaultPasswords['admin'] = crypt('021120');

$EnableUpload = 1;
$DefaultPasswords['upload'] = crypt('021120');

# Uncomment and change these if needed
# putenv("TZ=EST5EDT"); # if you run PHP 5.0 or older
# date_default_timezone_set('America/New_York'); # if you run PHP 5.1 or newer

$TimeFmt = '%B %d, %Y, at %I:%M %p EST';

