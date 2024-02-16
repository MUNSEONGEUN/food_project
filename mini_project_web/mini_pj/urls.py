"""
URL configuration for mini_pj project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from recipe import views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("admin/", admin.site.urls),
    path("", views.index),
    path("category/", views.category), # category_id값 int로 들어가야 함
    path("category/menu/", views.menu), # menu_id값 int로 들어가야 함
    path("category/menu/recipe/", views.recipe), # recipe_id값 int로 들어가야 함
]
