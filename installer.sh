all="$0 $@"

for ext in $all; do
    mkdir -p /usr/src/php/ext/$ext
    curl -fsSL https://pecl.php.net/get/$ext | tar xvz \
        -C "/usr/src/php/ext/$ext" \
        --strip 1
done

docker-php-ext-install $all
