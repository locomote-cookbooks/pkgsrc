remote_file "/tmp/pkgsrc.tbz2" do
  source node['pkgsrc']['snapshot_url']
  checksum node['pkgsrc']['snapshot_sha1']
end

bash "extract the pkgsrc tree" do
  code "cd /usr && tar jxvf /tmp/pkgsrc.tbz2"
  not_if "test -d /usr/pkgsrc"
end

bash "bootstrap pkgsrc" do
  code "cd /usr/pkgsrc/bootstrap && ./bootstrap"
  not_if "test -x /usr/pkg/bin/bmake"
end

file "/usr/pkg/bin/pkg_summary" do
  mode "0755"
  content <<-SH
  #!/bin/sh
  for a in *.tgz; do
    pkg_info -X $a >> pkg_summary
  done
  gzip pkg_summary
  SH
end

cookbook_file "/etc/profile.d/pkgsrc.sh" do
  source "pkgsrc.sh"
  mode  0755
end

ENV['PATH'] = "/usr/pkg/bin:/usr/pkg/sbin:#{ENV['PATH']}"
