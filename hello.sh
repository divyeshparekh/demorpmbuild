echo "
# spec file for package pkgsource
#
# Copyright (c) 2013 SUSE LINUX Products GmbH, Nuernberg, Germany.
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via http://bugs.opensuse.org/
#


# See also http://en.opensuse.org/openSUSE:Specfile_guidelines
"


echo "Name:            pkgsource"
echo "Version:         "$1
echo "Release:         "$2
echo "Summary:         "$3
echo "BuildArch:      noarch"
echo "License:         "$4
echo "Group:          Development/Tools"
echo "Url:            http://localhost"
echo "Source0:        pkgsource-"$5".tar.gz"

echo "%description"
echo $6


echo "%prep"
echo "%setup -q"

echo "%install"
echo "mkdir -p '$RPM_BUILD_ROOT/var/www'"
echo "cp -R * '$RPM_BUILD_ROOT/var/www'"
echo "%files"
echo "/var/www/"
echo "%clean"
echo "rm -rf $RPM_BUILD_ROOT"
