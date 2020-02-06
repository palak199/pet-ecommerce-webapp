from django.shortcuts import render
from django.http import HttpResponse
from .models import Category, Detail
from django.shortcuts import get_object_or_404, render


# Create your views here.
def sale(request):
    template='sale/sale.html'
    return render(request,template)

def category(request):
   return render(request=request,
                 template_name='sale/categories.html',
                 context={"categories": Category.objects.all})
    

def single_slug(request,single_slug):
    categories = [c.slug for c in Category.objects.all()]
    if single_slug in categories:
        matching_items = Detail.objects.filter(category__category_name=single_slug)
        print(matching_items)
        return render(request=request,
                      template_name='sale/item.html',
                      context={"items": matching_items})


    return HttpResponse(f"'{single_slug}' does not correspond to anything we know of!")