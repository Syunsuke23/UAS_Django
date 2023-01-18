from django.shortcuts import render, get_object_or_404
from . models import Post
from . forms import Tamu


# Create your views here.
def index(request):
    return render(request, 'index.html')

def profil (request):
    return render(request, 'profil.html')

def buku(request):
    postingan = Post.objects.all()

    context = {
        'TampungPostingan' :postingan,
    }

    return render(request, 'buku.html', context)
        

from . forms import Tamu

def peminjaman(request):
    pinjam_buku = Tamu()

    context = {
        'PinjamBuku' : pinjam_buku,
    }

    return render(request, 'peminjaman.html', context)

def detail(request, id):
    postingan = get_object_or_404(Post,pk=id)
    
    context = {
        'TampungPostingan' :postingan,
    }
    
    return render(request, 'detail.html')    

