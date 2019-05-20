windows_package 'SomeExe' do
    source 'SomeLocation.exe'
    installer_type :custom
    options '/Q'
  end