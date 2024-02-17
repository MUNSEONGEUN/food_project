from django.urls import path
from recipe import views

app_name = "recipe"
urlpatterns = [
    path("", views.recipe, name = "recipe"), # "" = "<int:recipe_id>/"
    path("menu/", views.menu, name = "menu"),
    path("category/", views.category, name = "category"),
]