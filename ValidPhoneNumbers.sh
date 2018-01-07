# Read from the file file.txt and output all valid phone numbers to stdout.
grep -P "^(\d{3}-|\(\d{3}\) )\d{3}-\d{4}$" file.txt // \d代表任意数字, \(是取消括号的特殊意义; 不能\\(, 
这种是一个取消转义的\加上一个有自己功能的(, 没取消转义的括号; -P代表使用Perl规则的正规正则表达式, 在这里只有加上-P才有作用, 支持中间的
或符号

sed -rn "/^([0-9]{3}-|\([0-9]{3}\) )[0-9]{3}-[0-9]{4}$/p" file.txt // 两个//之间夹的是正则, p显示符合条件的行, -r正则, -n静默模式
sed不识别\d, 这里用[0-9]替代

