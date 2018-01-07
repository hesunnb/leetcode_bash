# Read from the file file.txt and output all valid phone numbers to stdout.
grep -P "^(\d{3}-|\(\d{3}\) )\d{3}-\d{4}$" file.txt // \d代表任意数字, \(是取消括号的特殊意义; 不能\\(, 
这种是一个取消转义的\加上一个有自己功能的(, 没取消转义的括号; -P代表使用Perl规则的正规正则表达式, 在这里只有加上-P才有作用, 支持中间的
或符号
