if [ -z $1 ]; then
  echo "Please provide perlbrew root path as \$1"
  exit 1;
fi
for i in $( cat ./fixlist.txt ); do
  echo "Patching $i";
  sed -i "s^/home/kent/perl5/perlbrew/perls/5.10.1-pristine^$1^g" $i;
done
