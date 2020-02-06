from django.db import models
from django.utils.text import slugify
from django.contrib.auth.models import User
class Category(models.Model):
    category_name=models.CharField(primary_key=True,default="null", max_length=50)
    img=models.ImageField(null=True, upload_to='sale/')  
    slug= models.SlugField(blank=True, null=True)
    def save(self,*args,**kwargs):
        if not self.slug and self.category_name:
            self.slug=slugify(self.category_name)
        super(Category,self).save(*args,**kwargs)
    def __str__(self):
        return self.category_name
    
    class Meta:
        verbose_name="category"
        verbose_name_plural="categories"
    
class Detail(models.Model):
    category=models.ForeignKey(Category,on_delete=models.CASCADE,null=True,blank=True)
    name=models.CharField(max_length=50,null=True,blank=True)
    sr_no=models.IntegerField(default=1,null=True,blank=True)
    price=models.DecimalField(decimal_places=2,max_digits=10,null=True,blank=True)
    availability=models.CharField(max_length=25,null=True,blank=True)
    features=models.TextField(max_length=200,null=True,blank=True)
    img=models.ImageField(null=True, upload_to='sale/',blank=True)
    slug= models.SlugField(blank=True, null=True)
    def save(self,*args,**kwargs):
        if not self.slug and self.name:
            self.slug=slugify(self.name)
        super(Detail,self).save(*args,**kwargs)
    def __str__(self):
        return self.name
    
    
class Customer(models.Model):
    name=models.CharField(max_length=50,null=True,blank=True)
    phone=models.IntegerField(null=True,blank=True)
    birthday=models.DateField(null=True,blank=True)
    city=models.CharField(max_length=100,null=True,blank=True)
    address=models.CharField(max_length=200,null=True,blank=True)
    slug= models.SlugField(blank=True, null=True)
    def save(self,*args,**kwargs):
        if not self.slug and self.name:
            self.slug=slugify(self.name)
        super(Category,self).save(*args,**kwargs)
    def __str__(self):
        return self.name
    
