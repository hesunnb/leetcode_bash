# Read from the file words.txt and output the word frequency list to stdout.
cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'
#tr -s String1 String2, 把String1全部都替换为String2(如果String1有重复的, 也只替换一次, 比如这里即使文本中String1处有许多空格,
#那么空格先化简为一个, 然后只替换为一个换行符; 即使不是空格而是@@@这样之类的符号也是化为一个@, 然后替换为一个换行符)

#sort是排序
#uniq -c是显示重复结果并计数
#sort -r是将排序结果逆序
#awk打印
