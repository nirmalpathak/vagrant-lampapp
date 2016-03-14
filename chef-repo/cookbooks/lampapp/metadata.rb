name             'lampapp'
maintainer       'Nirmal'
maintainer_email 'nirmal@localhost'
license          'All rights reserved'
description      'Installs/Configures lampapp'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apache2"
depends 'mysql', '~> 6.0'
depends 'php'
