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
awk 'NR == 10' file.txt //NR,表示awk开始执行程序后所读取的数据行数.FNR,与NR功用类似,不同的是awk每打开一个新文件,FNR便从0重新累计.
			//这里是只读取第十行

# Solution 3
sed -n 10p file.txt //-n是静默模式, p是只显示符合条件的行

# Solution 4
tail -n+10 file.txt|head -1 //-n+10, 表示从头删掉10-1行之后开始
