from django.shortcuts import render, redirect
from . models  import * 
from django.db import connection
from .forms import *
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import login, authenticate
from django.contrib.auth.hashers import make_password

# Create your views here.
def index(request):
    clients = Clients.objects.count()
    areas = ClientAreas.objects.count()
    delivery = Deliveries.objects.count()
    return render(request, 'index.html', {'clients':clients, 'areas':areas, 'delivery':delivery})

@csrf_exempt
def sign_in(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            
            email = form.cleaned_data.get('email')
            password = form.cleaned_data.get('password')
            form.save()
            # user = authenticate(email=email, password=password)
            # user.set_password(user.password)
            # login(request, user, backend='django.contrib.auth.backends.ModelBackend')
            
            return redirect('index')
    else:
        form = LoginForm()

    return render(request, 'login.html')


def reports(request):
    cursor=connection.cursor()
    cursor.execute('select clients.client_name, deliveries.date_created, deliveries.created_by, deliveries.bags_issued, deliveries.total_bags_issued, client_areas.area_name, deliveries.bags_size, deliveries.occupied_units from clients join deliveries on clients.id = deliveries.client join client_areas on client_areas.id = clients.client_area')

    results = cursor.fetchall()
    # reports = Deliveries.objects.all()
    return render(request, 'reports.html', {'results':results})

@csrf_exempt
def clients(request):
    cursor = connection.cursor()
    cursor.execute('select clients.client_name, clients.status, client_areas.area_name from clients join client_areas on  client_areas.id = clients.client_area  ')
    clients = cursor.fetchall()

    area = ClientAreas.objects.all()
    if request.method == 'POST':
        form= ClientsForm(request.POST, request.FILES)
        if form.is_valid():
            client_area = form.cleaned_data.get('client_area')
            form.save()

            return redirect('clients')
    else:
        form = ClientsForm()

    return render(request, 'clients.html', {'clients': clients, 'form':form, 'area':area})


    