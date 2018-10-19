CURRENTDIR = ${PWD}
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

for f in $SCRIPTPATH/*-install.sh; do  # or wget-*.sh instead of *.sh
  bash "$f" -H   || break # if needed
done

cd $SCRIPTPATH
cd ../../aspnet_core_mvc
npm install
cd ../aspnet_core_webapi
npm install
cd $CURRENTDIR
