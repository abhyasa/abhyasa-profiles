# Class: profiles::linux::jenkins::master
#
# This role class is for installing Jenkins
# - Create jenkins users and groups
# - Install GIT
# - Install Oracle JDK
# - Install Jenkins
#
class profiles::linux::jenkins::master {
  # include profiles::linux::jenkins::users
  # include profiles::linux::git

  class { 'profiles::linux::jenkins::users':
  } ->
  class { 'profiles::linux::git': }

}