if [ -z $1 ]; then
  echo "Please provide perlbrew root path as \$1"
  exit 1;
fi
for i in $( cat ./fixlist.txt ); do
  sed -i "s^/home/kent/perl5/perlbrew/perls/5.21.0-pristine^$1^g" $i;
done
