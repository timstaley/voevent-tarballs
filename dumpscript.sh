YEAR=2017
NSPLIT=50000
STARTMONTH=1
DATABASE=voeventdb
# Jan - Feb, end date is start of next month:
for i in $(seq -f %02g $STARTMONTH 11); do 
    FILESTEM=${YEAR}-${i}
    voeventdb_dump_tarball.py -d$DATABASE -n $NSPLIT -p -e ${YEAR}-$(expr ${i} + 1) -s ${YEAR}-${i}  ${FILESTEM}
done
# For December, end date is start of the next year:
voeventdb_dump_tarball.py -d$DATABASE -n $NSPLIT -p -e $(expr ${YEAR} + 1)-01-01 -s ${YEAR}-12  ${YEAR}-12

