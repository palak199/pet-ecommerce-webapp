from django.shortcuts import render

# Create your views here.
def care(request):
    template='catcare/catcare.html'
    return render(request,template)