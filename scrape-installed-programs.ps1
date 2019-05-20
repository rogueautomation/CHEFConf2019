if(!(Test-Path C:\recipeScraper)){New-Item -ItemType Directory -Path C:\recipeScraper}

foreach ($program in (Get-Ciminstance win32_product)){

'windows_package' + "'" + "$($program.name)" + "'" + 'do
action :install' +
'source '+'PackagePath' + 
'options ' + '/qn' +
'end' | out-file C:\recipeScraper\$env:computername-programs.rb -append

}
cookstyle -a C:\recipeScraper
