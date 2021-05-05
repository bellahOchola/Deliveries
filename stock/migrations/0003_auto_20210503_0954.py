# Generated by Django 3.0.2 on 2021-05-03 06:54

from django.db import migrations, models
import django.db.models.deletion
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('stock', '0002_auto_20210427_1553'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='clientareas',
            options={},
        ),
        migrations.AddField(
            model_name='users',
            name='role',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='stock.Roles'),
        ),
        migrations.AlterField(
            model_name='clients',
            name='id',
            field=models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False),
        ),
    ]
