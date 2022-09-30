#!/bin/zsh
if [ $2 = "x" ]
then
ad=$(($1 * $3))
elif [ $2 = "+" ]
then
ad=$(($1 + $3))
elif [ $2 = "-" ]
then
ad=$(($1 - $3))
elif [ $2 = "/" ]
then
ad=`calc $1/$3`
# ad=$(($1/$3))
fi
echo "= " $ad
