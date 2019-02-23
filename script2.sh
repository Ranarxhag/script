count=0
while [ $count -lt 2 ]
do
	NAME=`cat /dev/urandom | env LC_CTYPE=C tr -cd 'a-f0-9' | head -c 32` && touch ~/Desktop/$NAME && touch ~/$NAME && echo "bite" > ~/Desktop/$NAME && echo "bite" > ~/$NAME && chmod +a "everyone deny delete" ~/Desktop/$NAME && chmod +a "everyone deny delete" ~/$NAME  && open ~/Desktop/$NAME && open ~/$NAME
	count=$((count+1))
done
