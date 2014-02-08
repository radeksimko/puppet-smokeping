class smokeping::setup {
  if ($::operatingsystem != 'CentOS') {
    # Ain't been testing it on other platforms (yet)
    fail('smokeping requires CentOS')
  }
}
