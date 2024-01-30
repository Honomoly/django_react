from django.db import models

# Create your models here.

class Book(models.Model):
    bookno = models.IntegerField(db_column='bookNo', primary_key=True)  # Field name made lowercase.
    bookname = models.CharField(db_column='bookName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    bookauthor = models.CharField(db_column='bookAuthor', max_length=10, blank=True, null=True)  # Field name made lowercase.
    bookprice = models.IntegerField(db_column='bookPrice', blank=True, null=True)  # Field name made lowercase.
    bookdate = models.DateField(db_column='bookDate', blank=True, null=True)  # Field name made lowercase.
    bookstock = models.IntegerField(db_column='bookStock', blank=True, null=True)  # Field name made lowercase.
    pubno = models.ForeignKey('Publisher', models.DO_NOTHING, db_column='pubNo', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'book'


class Booksale(models.Model):
    bsno = models.IntegerField(db_column='bsNo', primary_key=True)  # Field name made lowercase.
    bsdate = models.DateField(db_column='bsDate', blank=True, null=True)  # Field name made lowercase.
    bsqty = models.IntegerField(db_column='bsQty', blank=True, null=True)  # Field name made lowercase.
    clientno = models.ForeignKey('Client', models.DO_NOTHING, db_column='clientNo', blank=True, null=True)  # Field name made lowercase.
    bookno = models.ForeignKey(Book, models.DO_NOTHING, db_column='bookNo', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'bookSale'


class Client(models.Model):
    clientno = models.IntegerField(db_column='clientNo', primary_key=True)  # Field name made lowercase.
    clientname = models.CharField(db_column='clientName', max_length=10, blank=True, null=True)  # Field name made lowercase.
    clientphone = models.CharField(db_column='clientPhone', max_length=13, blank=True, null=True)  # Field name made lowercase.
    clientaddress = models.CharField(db_column='clientAddress', max_length=20, blank=True, null=True)  # Field name made lowercase.
    clientbirth = models.DateField(db_column='clientBirth', blank=True, null=True)  # Field name made lowercase.
    clienthobby = models.CharField(db_column='clientHobby', max_length=10, blank=True, null=True)  # Field name made lowercase.
    clientgender = models.CharField(db_column='clientGender', max_length=10, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'client'


class Product(models.Model):
    prd_no = models.CharField(max_length=10)
    prd_name = models.CharField(max_length=20, blank=True, null=True)
    prd_price = models.IntegerField(blank=True, null=True)
    prd_maker = models.CharField(max_length=30, blank=True, null=True)
    prd_color = models.CharField(max_length=10, blank=True, null=True)
    ctg_no = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'product'


class Publisher(models.Model):
    pubno = models.IntegerField(db_column='pubNo', primary_key=True)  # Field name made lowercase.
    pubname = models.CharField(db_column='pubName', max_length=10, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'publisher'

