default['php-phalcon']['git_url'] = 'git://github.com/phalcon/cphalcon.git'
default['php-phalcon']['git_ref'] = 'master'

package 'php-devel' do
  package_name value_for_platform(
    'default' => 'php-devel'
  )
  action :install
end

package 'pcre-devel' do
  package_name value_for_platform(
    'default' => 'pcre-devel'
  )
  action :install
end

package 'gcc' do
  package_name value_for_platform(
    'default' => 'gcc'
  )
  action :install
end

package 'make' do
  package_name value_for_platform(
    'default' => 'make'
  )
  action :install
end

default['php-phalcon']['devtools'] = true
