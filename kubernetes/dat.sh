if [ -z "$(helm datree version)" ]
then
helm plugin install https://github.com/datreeio/helm-datree
helm datree test myapp/
else
helm datree test myapp/
fi
