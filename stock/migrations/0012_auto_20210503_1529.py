# Generated by Django 3.0.2 on 2021-05-03 12:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0011_auto_20210503_1336'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clientareas',
            name='id',
            field=models.CharField(max_length=50, primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='clients',
            name='id',
            field=models.CharField(max_length=50, primary_key=True, serialize=False),
        ),
    ]