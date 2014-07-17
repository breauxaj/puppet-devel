# Class: devel
#
# This class installs certain development packages
#
# Parameters:
#
#  ensure: (default latest)
#    Determine the state of the packages
#
# Actions:
#   - Installs the list of packages
#
# Requires:
#
#  EPEL repository
#
# Sample Usage:
#
#  For a standard installation, use:
#
#    class { 'devel':
#      ensure => 'latest'
#    }
#
#  To remove the installation, use:
#
#    class { 'devel':
#      ensure => 'absent'
#    }
#
class devel (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [
      'autoconf',
      'automake',
      'bison',
      'bzip2',
      'gcc-c++',
      'iconv-devel',
      'libffi-devel',
      'libtool',
      'libyaml-devel',
      'make',
      'openssl-devel',
      'patch',
      'readline-devel',
      'zlib-devel'
    ],
  }

  package { $required: ensure => $ensure }

}
