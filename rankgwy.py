# -*- coding: utf-8 -*- 
import MySQLdb
con = MySQLdb.connect(host='192.168.1.10',user='root',passwd='123123',db='gwycf')
cursor = con.cursor()

#sqlstr = "select distinct epost,postcode from info";#找出所有职位名称以及职位代码
sqlstr = "select distinct epost from info";#找出所有职位名称以及职位代码
cursor.execute(sqlstr)
postinfo = cursor.fetchall()
paiming = 0 
pzongfen = 0 

if postinfo:
    for rec in postinfo:
        #sqlstr = "select * from info where epost='%s' and postcode='%s' order by zongfen desc" % (rec[0],rec[1]) 
        sqlstr = "select name,haoma,zongfen from info where epost='%s' order by zongfen desc" % (rec[0]) 
        cursor.execute(sqlstr)
        sortedData = cursor.fetchall()
        if sortedData:
           for sd in sortedData:
              if pzongfen != sd[2]:
                 paiming = paiming + 1 

              sqlstr = "UPDATE info SET rank='%d' WHERE name='%s' and haoma='%s'" % (paiming,sd[0],sd[1])
              pzongfen = sd[2]

              print sd[0],paiming
              cursor.execute(sqlstr)
#              paiming=paiming + 1 
        paiming = 0 
con.commit()
cursor.close()
con.close()

