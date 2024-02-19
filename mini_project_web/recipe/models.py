from django.db import models

# Create your models here.
class Category(models.Model):
    category_name = models.CharField("카테고리 이름" , max_length = 50, default='')

class Menu(models.Model):
    category_id = models.IntegerField(default=0)
    time = models.IntegerField(default='')
    menu_name = models.CharField("메뉴 이름", max_length = 50, default='')
    image = models.ImageField(default='')

class Recipe(models.Model):
    user_id = models.IntegerField(default='')
    menu_id = models.IntegerField(default='')
    title = models.CharField(max_length = 50, default='')
    ingredient = models.CharField(max_length = 50, default='')
    cook_tool = models.CharField(max_length = 50, default='')

class Recipe_process(models.Model):
    recipe_id = models.IntegerField(default='')
    image = models.ImageField(default='')
    process = models.TextField(default='')