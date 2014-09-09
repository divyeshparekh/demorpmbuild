
# spec file for package pkgsource
#
# Copyright (c) 2013 SUSE LINUX Products GmbH, Nuernberg, Germany.
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An Open Source License is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via http://bugs.opensuse.org/
#


# See also http://en.opensuse.org/openSUSE:Specfile_guidelines

Name:            pkgsource
Version:         1
Release:         1
Summary:         this is the summary
BuildArch:      noarch
License:         This is the license
Group:          Development/Tools
Url:            http://localhost
Source0:        pkgsource-1.tar.gz
%description
This is the desc
%prep
%setup -q
%install
mkdir -p '/var/www'
cp -R * '/var/www'
%files
/var/www/
%clean
rm -rf 
