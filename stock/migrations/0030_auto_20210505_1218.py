# Generated by Django 3.0.2 on 2021-05-05 09:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0029_auto_20210504_1727'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clients',
            name='status',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='users',
            name='id',
            field=models.CharField(max_length=50, primary_key=True, serialize=False),
        ),
    ]
