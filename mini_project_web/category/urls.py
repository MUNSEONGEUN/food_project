from django.urls import path
from category import views

urlpatterns = [
    path("", views.category, name="category_list"),
]