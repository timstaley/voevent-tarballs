YEAR=2016
NSPLIT=100000
STARTMONTH=1
# Jan - Feb, end date is start of next month:
for i in $(seq -w $STARTMONTH 11); do 
    voeventdb_dump_tarball.py -n $NSPLIT -p -e ${YEAR}-$(expr ${i} + 1) -s ${YEAR}-${i}  ${YEAR}-${i}
done
# For December, end date is start of the next year:
#voeventdb_dump_tarball.py -n $NSPLIT -p -e $(expr ${YEAR} + 1)-01-01 -s ${YEAR}-12  ${YEAR}-12
