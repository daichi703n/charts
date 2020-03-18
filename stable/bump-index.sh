if [ -z "$1" ]
  then
    echo "ERROR: File not specified"
    exit 1
fi
set -e
mkdir tmp
cp $1 tmp/
helm repo index --merge index.yaml tmp
mv tmp/index.yaml index.yaml
rm -rf tmp
git diff
