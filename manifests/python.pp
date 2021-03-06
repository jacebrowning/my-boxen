# Install Python versions
$python2 = '2.7.12'
$python3 = '3.5.0'
python::version { "$python2": }
python::version { "$python3": }
python::version { "3.5.2": }
python::version { "3.6.0b2": }

# Set the global versions of Python
class { 'python::global':
  version => "$python3 $python2"
}

# Install core libraries for Python 2
python::package { "setuptools for $python2":
  package => 'setuptools',
  python  => $python2,
}
python::package { "pip for $python2":
  package => 'pip',
  python  => $python2,
  version => '>= 9.0.0',
}
python::package { "virtualenv for $python2":
  package => 'virtualenv',
  python  => $python2,
  version => '>= 15.0.1, < 16'
}

# Install core libraries for Python 3
python::package { "setuptools for $python3":
  package => 'setuptools',
  python  => $python3,
}
python::package { "pip for $python3":
  package => 'pip',
  python  => $python3,
  version => '>= 9.0.0',
}
python::package { "virtualenv for $python3":
  package => 'virtualenv',
  python  => $python3,
  version => '>= 15.0.1, < 16'
}

# Install development tools for Python 3
python::package { "pep8 for $python3":
  package => 'pep8',
  python  => $python3,
  version => '>= 1.6, < 2',
}
python::package { "autopep8 for $python3":
  package => 'autopep8',
  python  => $python3,
  version => '>= 1.2, < 2',
}
python::package { "pep257 for $python3":
  package => 'pep257',
  python  => $python3,
  version => '>= 0.7, < 0.8',
}
python::package { "pylint for $python3":
  package => 'pylint',
  python  => $python3,
  version => '>= 1.5.4, < 2',
}
python::package { "pylama for $python3":
  package => 'pylama',
  python  => $python3,
  version => '>= 7.0.9, < 8',
}
python::package { "sniffer for $python3":
  package => 'sniffer',
  python  => $python3,
  version => '>= 0.3.6, < 4',
}

# Install tools written in Python 2
python::package { "ansible for $python2":
  package => 'ansible',
  python  => $python2,
  version => '>= 2.0.0.0, < 3'
}

# Install tools written in Python 3
python::package { "gitman for $python3":
  package => 'gitman',
  python  => $python3,
  version => '>= 1.0.2, < 2',
}
python::package { "httpie for $python3":
  package => 'httpie',
  python  => $python3,
  version => '>= 0.9.2, < 1',
}
python::package { "honcho for $python3":
  package => 'honcho',
  python  => $python3,
  version => '>= 0.6.6, < 0.7',
}
python::package { "ipython for $python3":
  package => 'ipython',
  python  => $python3,
  version => '>= 0.13.2, < 0.14',
}
python::package { "notebook for $python3":
  package => 'notebook',
  python  => $python3,
  version => '>= 4.0.2, < 5',
}
python::package { "cookiecutter for $python3":
  package => 'cookiecutter',
  python  => $python3,
  version => '>= 1.4, < 2',
}
python::package { "thefuck for $python3":
  package => 'thefuck',
  python  => $python3,
  version => '>= 3.1, < 4',
}
python::package { "sappy for $python3":
  package => 'sappy',
  python  => $python3,
  version => '>= 0.2.1',
}
python::package { "awscli for $python3":
  package => 'awscli',
  python  => $python3,
  version => '>= 1.10.38, < 2',
}
python::package { "proselint for $python3":
  package => 'proselint',
  python  => $python3,
  version => '>= 0.6.1, < 0.7',
}
python::package { "coverage.space for $python3":
  package => 'coverage.space',
  python  => $python3,
  version => '>= 0.5',
}
python::package { "verchew for $python3":
  package => 'verchew',
  python  => $python3,
  version => '>= 0.4',
}
