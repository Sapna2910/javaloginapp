if [ -z "$(helm datree version)" ]
then
echo "inside then"
helm plugin install https://github.com/datreeio/helm-datree
helm datree test myapp/
else
echo "inside else"
helm datree test myapp/
fi
