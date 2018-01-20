dir=$(dirname $0)

for file in $dir/*.sh; do
    source $file
done

config_dir="$dir/config"

for file in $(ls -A $config_dir); do 
    config_file="$config_dir/$file"
    file="$HOME/$file"

    if [ -f $file ]; then
        diff $config_file $file > /dev/null 
        if [ $? -eq 0 ]; then
            continue
        else
            rm $file
        fi
    fi

    ln -s $config_file $file
done
