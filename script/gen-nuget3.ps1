
#generate nugets of my libs dependent on my dependent libs
$path = 'lib2'
$libs = 'EFCore.Helper'

#up from script dir
cd ..

foreach ($lib in $libs) {
  cd "${path}/${lib}"
  dotnet pack -c Release -o C:\atari-monk\nugets
  #up from lib dir
  cd ../..
}
