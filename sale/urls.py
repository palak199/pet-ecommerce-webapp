from django.urls import path
from . import views
app_name="sale"
urlpatterns = [
    path('', views.sale, name="sale"),
    path('category/',views.category, name="category"),
    path("category/<single_slug>", views.single_slug, name="single_slug"),
]
