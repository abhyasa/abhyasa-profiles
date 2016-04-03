# Class: profiles::linux::git
#
# This role class is for installing GIT
#
class profiles::linux::git {
  package { 'git': ensure => present, }

}