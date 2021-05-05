# Generated by Django 3.0.2 on 2021-05-04 07:44

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0021_auto_20210504_0953'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clients',
            name='client_area',
            field=models.UUIDField(default=uuid.uuid4),
        ),
    ]
