#The 

data=$(curl http://169.254.169.254/latest/meta-data/ --silent)

printf "[{"
for d in $data
do
        v=$(curl http://169.254.169.254/latest/meta-data/$d --silent)
        printf "'$d':'$v',\n"
done
printf "}]\n"
