from django.urls import path

from . import views


urlpatterns = [
    path('', views.index, name = 'index'),
    path('profil.html/', views.profil, name = 'profil'),
    path('buku.html/', views.buku,  name = 'buku'),
    path('<int:id>', views.detail, name = 'detail'),
    path('peminjaman.html/', views.peminjaman, name = 'peminjaman'),
    
]