from django.db import models
from django.contrib.auth.models import User
from cloudinary.models import CloudinaryField

class Donor(models.Model):
    id = models.BigAutoField(primary_key=True)  # New way
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    profile_pic= CloudinaryField('image', folder='profile_pics')


    
    bloodgroup=models.CharField(max_length=10)
    

    address = models.CharField(max_length=40)
    mobile = models.CharField(max_length=20,null=False)
   
    @property
    def get_name(self):
        return self.user.first_name+" "+self.user.last_name
    @property
    def get_instance(self):
        return self
    def __str__(self):
        return self.user.first_name

class BloodDonate(models.Model): 
    id = models.BigAutoField(primary_key=True)  # New way
    donor=models.ForeignKey(Donor,on_delete=models.CASCADE)   
    disease=models.CharField(max_length=100,default="Nothing")
    age=models.PositiveIntegerField()
    bloodgroup=models.CharField(max_length=10)
    unit=models.PositiveIntegerField(default=0)
    status=models.CharField(max_length=20,default="Pending")
    date=models.DateField(auto_now=True)
    def __str__(self):
        return self.donor