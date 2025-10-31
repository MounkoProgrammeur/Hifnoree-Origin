from django.shortcuts import render
from .models import Produit


def home(request):
    return render(request, "home.html")

def liste_produits(request):
    produits = Produit.objects.all()

    return render(request, 'liste_produits.html', {'produits':produits})
