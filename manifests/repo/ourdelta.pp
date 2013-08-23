class apt::repo::ourdelta {

  apt::key { 'ourdelta':
    url => 'http://ourdelta.org/deb/ourdelta.gpg'
  }

  apt::repository { 'ourdelta' :
    url         => 'http://mirror.ourdelta.org/deb',
    distro      => $::lsbdistcodename,
    repository  => 'mariadb-ourdelta',
    require     => Apt::Key['ourdelta'],
    source      => true,
  }
}
