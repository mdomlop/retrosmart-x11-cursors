rm *~
for i in *.xpm; do sed -i 's/#ffffff/white/g' $i; done
for i in *.xpm; do sed -i 's/#000000/black/g' $i; done
for i in *.xpm; do sed -i 's/#ff7f50/coral/g' $i; done
for i in *.xpm; do sed -i 's/#00ffff/cyan/g' $i; done
