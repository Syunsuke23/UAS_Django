from django import forms

class Tamu(forms.Form):
    nama = forms.CharField(
        max_length=50,
        widget = forms.TextInput(
            attrs={
                'class':'form-control',
                'placeholder':'masukkan nama lengkap anda',
            }
        )
    )
    alamat = forms.CharField(
        widget = forms.Textarea(
            attrs={
                'class':'form-control',
                'placeholder':'masukkan alamat anda',
            }
        )
    )
    buku = forms.CharField(
        max_length=50,
        widget = forms.TextInput(
            attrs={
                'class':'form-control',
                'placeholder':'masukkan judul buku yang ingin anda pinjam ',
            }
        )
    )
    tgl_pinjam = forms.DateField(
        widget = forms.SelectDateWidget(
            attrs = {
                'class':'form-control col-sm-2',
            },
            years=range(2022,2024,1),
        )
    )
    #tgl_kembali = forms.DateField(
     #   widget = forms.SelectDateWidget(
      #      attrs = {
       #         'class':'form-control col-sm-2',
        #    },
         #   years=range(2022,2024,1),
       # )
    #)
