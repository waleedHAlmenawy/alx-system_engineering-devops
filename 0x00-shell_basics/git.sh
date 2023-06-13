#!/bin/bash
echo $SH_NAME
echo $SH_CMD
echo $SH_MSG

touch $SH_NAME
echo "#!/bin/bash" > $SH_NAME
echo $SH_CMD >> $SH_NAME

chmod u+x $SH_NAME

echo "<p>$SH_NAME : $SH_MSG<br>" >> README.md

echo $?

git add .
git commit -m $SH_MSG
git push
