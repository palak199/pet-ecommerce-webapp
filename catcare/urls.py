from django.urls import path,include
from django.contrib import admin
from django.conf import settings
from . import views
from django.conf.urls.static import static
app_name="catcare"
urlpatterns = [
    
    path('', views.care, name="cat_care"),
    
]

