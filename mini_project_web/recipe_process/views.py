from django.shortcuts import render


# Create your views here.
def recipe_process(request):
    return render(request, "recipe_precess/recipe_process.html")
