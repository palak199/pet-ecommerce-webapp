
from django.urls import path,include
from django.contrib import admin
from django.conf import settings
from . import views
from django.contrib.auth import login,logout
from django.conf.urls.static import static

urlpatterns = [
    path('accounts/',include('accounts.urls')),
    path('', views.home, name="home"),
    path('about/', views.about, name="about"),
    path('logout/', views.logout, name='logout'),
    path('catcare/', include("catcare.urls", namespace="catcare")),
    path('sale/', include("sale.urls", namespace="sale")),
    
]
urlpatterns+= static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
