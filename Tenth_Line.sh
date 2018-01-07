# Read from the file file.txt and output the tenth line to stdout.
#Solution1(own)
FILE=file.txt
let I=0

while read LINE; do
	let I++
	if [ $I -eq 10 ]; then
		echo $LINE
		exit 0
	fi
done < $FILE

echo ""

# Solution 2
awk 'FNR == 10 {print }'  file.txt
# OR
awk 'NR == 10' file.txt

# Solution 3
sed -n 10p file.txt

# Solution 4
tail -n+10 file.txt|head -1
