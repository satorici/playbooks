CONT=1
while [ $CONT -le 500 ]; do 
    curl -s "https://pypi.org/search/?c=Development+Status+%3A%3A+5+-+Production%2FStable&page=$CONT"|grep "package-snippet__name"|awk -F'>' '{print $2}'|awk -F'<' '{print $1}'
    CONT=$((CONT+1)); 
done >> paquetes
