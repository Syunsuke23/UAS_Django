# Generated by Django 4.1.3 on 2023-01-17 13:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('perpus', '0010_alter_guest_tgl_kembali_alter_guest_tgl_pinjam'),
    ]

    operations = [
        migrations.AlterField(
            model_name='guest',
            name='tgl_kembali',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='guest',
            name='tgl_pinjam',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]