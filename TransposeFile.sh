# Read from the file file.txt and print its transposed content to stdout.

#solution1
awk '
{
    for (i = 1; i <= NF; i++) { //这是列数的循环
        if(NR == 1) { //行数自动循环
            s[i] = $i; //$i是每一行的第i列的那个字符串, s[i]是跟着列跑的
        } else {
            s[i] = s[i] " " $i;
        }
    }
}
END { //表示在最后执行
    for (i = 1; s[i] != ""; i++) { //打印s[i]
        print s[i];
    }
}' file.txt

#solution2(memory limit exceed, own method)
num=$(awk '{ print NF }' Transpose.txt | tail -1) //print NF会打印列数不过会打印列数多个NF值, 所以取一个, 就取最后一个
for I in $(seq 1 $num); do //{1..$num}这种是不允许的, 所以用seq生成序列, seq可以指定生成序列的起始值和终止值
	tmp=$(awk '{ print $n }' n=$I Transpose.txt) //print如果想引用变量的值得在{}与文件之间加入这种中间变量才可以
	echo $tmp
done
