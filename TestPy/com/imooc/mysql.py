# -*- coding: utf-8 -*-
import MySQLdb
class TransferAccount(object):
    def __init__(self,conn):
        self.conn=conn
    def check_account_existed(self,id):
        cursor=self.conn.cursor()
        try:
            sql="select * from account where acctid=%s"%id
            print ("check_account_existed:"+sql)
            cursor.execute(sql)
            rs=cursor.fetchall()
            if len(rs)!=1:
                raise Exception("账号%s不存在"%id)
        except Exception as e:
            print (e)
        finally:
            if cursor!=None:
                cursor.close()
        pass 
    def check_money_enough(self,id,money):
        cursor=self.conn.cursor()
        try:
            sql="select * from account where acctid=%s and money>%s "%(id,money)
            cursor.execute(sql)
            print ("check_money_enough:"+sql)
            rs=cursor.fetchall()
            if len(rs)!=1:
                raise Exception("账号%s余额不足"%id)
        finally:
            cursor.close()
        pass 
    def reduce_money(self,id,money):
        cursor=self.conn.cursor()
        try:
            sql="update account set money=money-%s where acctid=%s "%(money,id)
            cursor.execute(sql)
            print ("reduce_money:"+sql)
            if cursor.rowcount!=1:
                raise Exception("账号%s减款失败"%id)
        finally:
            cursor.close()
        pass 
    def add_money(self,id,money):
        cursor=self.conn.cursor()
        try:
            sql="update account set money=money+%s where acctid=%s "%(money,id)
            cursor.execute(sql)
            print ("add_money:"+sql)
            if cursor.rowcount!=1:
                raise Exception("账号%s加款失败"%id)
        finally:
            cursor.close()
        pass
        
    def transfer(self,ain,aout,money):
        try:
            self.check_account_existed(ain)
            self.check_account_existed(aout)
            self.check_money_enough(aout,money)
            self.reduce_money(aout,money)
            self.add_money(ain,money)
            self.conn.commit()
        except Exception as e:
            conn.rollback()
            raise e
            
conn=MySQLdb.connect(host='127.0.0.1',
                     port=3306,
                     user='root',
                     passwd='root',
                     db='temp',
                     charset='utf8')




tr_money=TransferAccount(conn)
try:
   tr_money.transfer(1,2,100)
except Exception as e:
    print u"出现问题"+str(e)
    
finally:
    cursor=conn.cursor()
    sql="select * from account"
    cursor.execute(sql)
    print (cursor.rowcount)
    rs=cursor.fetchall()
    for i in rs:
        print i
    cursor.close()
    conn.close()
   

        
        