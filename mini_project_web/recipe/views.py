from django.shortcuts import render

# Create your views here.
def category(request):
    return render(request, "recipe/category.html")

def menu(request):
    return render(request, "recipe/menu.html")

def recipe(request):
    return render(request, "recipe/recipe.html")