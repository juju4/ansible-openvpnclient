require 'serverspec'

# Required by serverspec
set :backend, :exec

describe service('openvpn') do  
  it { should be_enabled   }
#  it { should be_running   }
end  

describe file('/usr/sbin/openvpn') do
  it { should be_executable }
end
