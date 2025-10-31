from django.db import models

class Categorie(models.Model):
    name = models.CharField(max_length=100)
    date_added = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['-date_added']
    def __str__(self):
        return self.name
    
    


class Produit(models.Model):
    title = models.CharField(max_length=200)
    price = models.FloatField()
    description = models.TextField(blank=True, null=True)
    categorie = models.ForeignKey(Categorie, on_delete=models.CASCADE, related_name='categorie')
    image = models.ImageField(upload_to='produits/', blank=True, null=True)
    date_added = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['-date_added']

    def __str__(self):
        return self.title
    