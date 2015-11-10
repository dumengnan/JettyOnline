#########################################################################
# File Name: batchexcu.sh
# Author: Mee
# Mail: YoungVeryBeautiful@gmail.com
# Created Time: 2015年11月04日 星期三 09时02分53秒
#########################################################################
#!/bin/bash

user="root"
passwd="123456"
sqlpath="/home/dci/workspace/JettyOnline"
mysql -u$user -p$passwd < $sqlpath/product_category.sql;

mysql -u$user -p$passwd < $sqlpath/product_detail.sql;
mysql -u$user -p$passwd < $sqlpath/product_description.sql;
mysql -u$user -p$passwd < $sqlpath/product_question.sql;
mysql -u$user -p$passwd < $sqlpath/product_image.sql;
