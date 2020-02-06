from django.shortcuts import render
from django.contrib.auth import logout as mylogout
from django.http import HttpResponseRedirect, HttpResponse
def home(request):
    template='c4u/home.html'
    return render(request,template)
def about(request):
    template='c4u/about.html'
    return render(request,template)
def logout(request):
    mylogout(request)
    # Redirect to a success page.
    return HttpResponseRedirect(reverse("c4u/home.html"))