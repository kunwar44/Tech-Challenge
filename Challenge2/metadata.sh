#The script will feth the metadata of the EC2 instance and give desired the output in JSON format 

data=$(curl http://169.254.169.254/latest/meta-data/ --silent)

printf "[{"
for d in $data
do
        v=$(curl http://169.254.169.254/latest/meta-data/$d --silent)
        printf "'$d':'$v',\n"
done
printf "}]\n"
