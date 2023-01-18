from django.db import models



class Post(models.Model):

    judul           = models.CharField(max_length=255)
    penulis         = models.CharField(max_length=50)
    penerbit        = models.CharField(max_length=50)
    tahun_terbit    = models.IntegerField()
    sinopsis        = models.TextField()
    

    def __str__(self):
        return self.judul

class Guest(models.Model):
    nama = models.CharField(max_length=50)
    alamat = models.CharField(max_length=250)
    buku = models.CharField(max_length=50)

    def __str__(self):
        return self.nama
