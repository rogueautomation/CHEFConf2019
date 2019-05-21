# For .exe installers, you must use the installer_type :custom flag

windows_package 'SomeExe' do
  source 'SomeLocation.exe'
  installer_type :custom
  options '/qn'
end

# Only run on Windows Server 2016/2012
if node['kernel']['name'].to_s.eql? 'Microsoft Windows Server 2012 R2 Datacenter'

  remote_file 'someRemoteFile' do
    source 'https://someSite/someFile.zip'
    path 'C:\temp\someFile.zip'
  end
end

if node['kernel']['name'].to_s.eql? 'Microsoft Windows Server 2016 Datacenter'

  remote_file 'someOtherRemoteFile' do
    source 'https://somesite/someOtherFile.zip'
    path 'C:\temp\someOtherFile.zip'
  end
end

# Add your internal public cert to CACert.pem if PowerShell has issues resolving internally secured websites

cookbook_file 'C:\\opscode\\chef\\embedded\\ssl\\certs\\cacert.pem' do
  source 'cacert.pem'
end
