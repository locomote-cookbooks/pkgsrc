# Description

This cookbook is used to bootstrap [pkgsrc](http://pkgsrc.se) package management system.
It may eventually evolve to support software installation from within Chef - if you implement this, your contribution is more than welcome.

# Requirements

Any system that pkgsrc [supports](http://www.netbsd.org/docs/pkgsrc/platforms.html) *should* work but the cookbook has only been tested on CentOS and RHEL, version 6.3.

This cookbook depends on the [build-essential](https://github.com/opscode-cookbooks/build-essential/) cookbook.

# Attributes

* `node['pkgsrc']['snapshot_url']` - The URL of the tar.bz2 snapshot. Defaults to *http://ftp.netbsd.org/pub/pkgsrc/pkgsrc-2012Q3/pkgsrc-2012Q3.tar.bz2*.
* `node['pkgsrc']['snapshot_sha1']` - The corresponding SHA1 checksum.

# Usage

Just include `recipe[pkgsrc::bootstrap]` in your run_list.

# License and Author
Author:: Vasily Mikhaylichenko (<vasily@locomote.com>)

Copyright (c) 2012, Locomote Pty Ltd.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met: 

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer. 
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution. 

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
