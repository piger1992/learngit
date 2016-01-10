查看文件大小：           ls -lht
查看文件夹大小：         du -sh *
查看内存大小：           free -m
查看cpu大小：            top（按q结束)
查看磁盘大小：           df -hl
查看目前运行程序情况：   ps -ef
查看剩余内存：           free -ml
kill程序：               kill -9 PID号（结束进程）

sed命令：
sed -n "1p"              打印脚本第一行匹配行
sed "1p"                 打印脚本第一行匹配行，然后再打印脚本的全部内容
sed -n "1,5p"            打印前5行
sed '/(匹配词)/a\#hello' 在脚本匹配词所在行下添加a\追加的内容
sed '2a\hello'           在第二行后追加hello
sed -n /(匹配词)/p       打印脚本匹配匹配词的行
sed '2d'                 删除脚本第二行
sed '2i\hello'           在第二行前追加hello
sed '2c\hello'           将第二行替换为hello
sed '/(匹配词)/='        打印匹配词所在的行的行号
sed -n -e /for/p -e '/for/='  -e:可执行多个任务
sed -n '/this/!p'        显示没有this的行
sed 's/T/t/'             将全部T替换为t
sed '1s/T/t;3s/b/B/'     替换第一行的T和第三行的b

grep命令：
grep -n for              显示出现for的行和行号
grep '[A-Z]'             显示所有包含大写字母的行
grep '^[[:space:]]'      查找义空格开头的行
grep -E 'for|if'         找出包含for或if的行
grep "\(l..e).*\1"       查找le中间包含任意2个字符的行
grep -C                  查看总行号

awk：
词、字的统计： awk '{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k,a[k]}'
