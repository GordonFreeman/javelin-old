git clone git://github.com/WordPress/WordPress.git wordpress
cd wordpress
last_tag=$(git tag | tail -1);
git reset --hard $last_tag
cp ./scripts/wp-config.php wordpress/
wp core install --blog=12.0.0.1 --email=admin@127.0.0.1 --db-name=wordpress --db-user=root --db-pass="" --db-host=127.0.0.1

