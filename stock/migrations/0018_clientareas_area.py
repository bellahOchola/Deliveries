# Generated by Django 3.0.2 on 2021-05-04 06:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0017_auto_20210504_0940'),
    ]

    operations = [
        migrations.AddField(
            model_name='clientareas',
            name='area',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='stock.Clients'),
        ),
    ]
