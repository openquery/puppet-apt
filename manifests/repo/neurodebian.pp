# Neuro repositories, used for latest fail2ban and other more Neuroscience packages
class apt::repo::neurodebian {

  apt::key { '2649A5A9' :
    keyserver => 'hkp://pgp.mit.edu',
  }

  # Repository and server lists: http://neuro.debian.net/lists/
  apt::repository { 'neurodebian' :
    url         => 'http://neuroimaging.sakura.ne.jp/neurodebian',
    distro      => $::lsbdistcodename,
    repository  => 'data main contrib non-free',
    require     => Apt::Key['2649A5A9'],
    source      => true,
  }
}

