dir=$(dirname $0)

for file in $dir/*.sh; do
    source $file
done
