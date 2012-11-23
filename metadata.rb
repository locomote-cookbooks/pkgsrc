maintainer       "Vasily Mikhaylichenko"
maintainer_email "vasily@locomote.com"
license          "BSD"
description      "Bootstraps pkgsrc (http://pkgsrc.se/)"
version          "0.1"

%w{redhat centos}.each do |os|
  supports os
end

depends "build-essential"
