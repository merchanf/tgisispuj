# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2016-02-05 21:50
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('proyectos', '0003_auto_20160205_2145'),
    ]

    operations = [
        migrations.AddField(
            model_name='proyecto',
            name='profesor',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='proyectos.Profesor'),
        ),
    ]
