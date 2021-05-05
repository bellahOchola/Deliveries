from django import forms
from .models import *
import uuid

class ClientsForm(forms.ModelForm):
    # id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    # client_area = forms.ModelChoiceField(queryset=ClientAreas.objects.values_list('area_name', flat=True).distinct(), empty_label="Select")

    class Meta:
        model= Clients
        fields= ["client_name", "status", "client_area"]

class LoginForm(forms.ModelForm):
    
    class Meta:
        model = Users
        fields = ('email', 'password',)