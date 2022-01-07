echo "Abilitando le estensioni importate:"

while read p; do
  gnome-extensions enable "$p"
  echo "abilitato $p"
done < /tmp/dotconf/extensions/enabled

echo "Import done"