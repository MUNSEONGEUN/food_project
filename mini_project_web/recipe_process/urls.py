from django.urls import path
from recipe import views

urlpatterns = [
    path("", views.recipe, name="recipe_process_detail"),
]