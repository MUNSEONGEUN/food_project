# Generated by Django 5.0.2 on 2024-02-16 11:56

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("recipe", "0003_recipe"),
    ]

    operations = [
        migrations.CreateModel(
            name="Recipe_process",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
            ],
        ),
    ]
