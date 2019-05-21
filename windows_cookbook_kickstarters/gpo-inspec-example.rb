control 'GPO - Enable LUA' do
  impact 0.4
  title 'Enable LUA Should Be Disabled'
  desc 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'

  only_if { os[:release].start_with?('10') }

  describe registry_key('EnableLUA', 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System') do
    its('EnableLUA') { should eq 0 }
  end
end
