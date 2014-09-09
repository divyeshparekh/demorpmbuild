rm -rf rpmbuild
mkdir rpmbuild
cd rpmbuild
mkdir -p rpm/{RPMS,SRPMS,SPEC,SOURCE,BUILD,tmp}
cd rpm/SOURCE
mkdir pkgsource-1
cd pkgsource-1
cp -irf ../../../../source/* ./
cd ..
tar -czvf pkgsource-1.tar.gz pkgsource-1
cd ..
rpmdev-newspec SPEC/pkgsource.spec

