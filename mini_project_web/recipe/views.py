from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, "index.html")

def category(request):
    return render(request, "category.html")

def menu(request):
    return render(request, "menu.html")

def recipe(request):
    return render(request, "recipe.html")