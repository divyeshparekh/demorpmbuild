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

echo "%build"

echo "
%install
mkdir -p \"\$RPM_BUILD_ROOT/var/www/demorpmbuild/source\"
cp -R * \"\$RPM_BUILD_ROOT/var/www/demorpmbuild/source\"


%clean
rm -rf \$RPM_BUILD_ROOT


%files
/var/www/demorpmbuild/source

%changelog
"
