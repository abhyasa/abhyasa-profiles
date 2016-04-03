# Class: profiles::linux::jenkins::users
#
# This role class is for creating jenkins users and groups
#
class profiles::linux::jenkins::users ($user = 'jenkins', $uid = '501', $group = 'jenkins', $gid = '501',) {
  group { $group:
    ensure => present,
    gid    => '501',
  }

  user { $user:
    ensure     => present,
    comment    => 'System user for Jenkins',
    gid        => $gid,
    home       => "/home/${user}",
    expiry     => absent,
    managehome => true,
    require    => Group[$group],
  }

}