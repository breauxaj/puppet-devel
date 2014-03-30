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
      'readline',
      'readline-devel',
      'zlib',
      'zlib-devel'
    ],
  }

  package { $required: ensure => $ensure }

}
