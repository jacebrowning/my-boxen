class people::modustri_ci {

  # tools
  include iterm2::dev
  include sublime_text

  # projects
  repository { "${boxen::config::srcdir}/modustri-api":
    source => 'modustri/api',
    provider => git,
    ensure   => 'origin/HEAD',
  }
  repository { "${boxen::config::srcdir}/modustri-uc-ios":
    source => 'modustri/uc-mobile',
    provider => git,
    ensure   => 'origin/HEAD',
  }
  repository { "${boxen::config::srcdir}/modustri-uc-web":
    source => 'modustri/uc-web',
    provider => git,
    ensure   => 'origin/HEAD',
  }
  repository { "${boxen::config::srcdir}/modustri-uc":
    source => 'modustri/uc',
    provider => git,
    ensure   => 'origin/HEAD',
  }

}
