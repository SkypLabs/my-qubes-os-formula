# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

rpm-fusion-free:
  pkgrepo.managed:
    - humanname: RPM Fusion for Fedora $releasever - Free
    - mirrorlist: http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch
    - gpgcheck: 1
    - gpgkey: file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever

rpm-fusion-free-updates:
  pkgrepo.managed:
    - humanname: RPM Fusion for Fedora $releasever - Free - Updates
    - mirrorlist: http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch
    - gpgcheck: 1
    - gpgkey: file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever

rpm-fusion-nonfree:
  pkgrepo.managed:
    - humanname: RPM Fusion for Fedora $releasever - Nonfree
    - mirrorlist: http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch
    - gpgcheck: 1
    - gpgkey: file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-nonfree-fedora-$releasever

rpm-fusion-nonfree-updates:
  pkgrepo.managed:
    - humanname: RPM Fusion for Fedora $releasever - Nonfree - Updates
    - mirrorlist: http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-$releasever&arch=$basearch
    - gpgcheck: 1
    - gpgkey: file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-nonfree-fedora-$releasever
