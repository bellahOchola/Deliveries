# Generated by Django 3.0.2 on 2021-05-04 08:43

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0024_auto_20210504_1142'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clientareas',
            name='area_name',
            field=models.UUIDField(default=uuid.uuid4, editable=False),
        ),
    ]
