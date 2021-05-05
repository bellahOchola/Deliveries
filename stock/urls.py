from . import views
from django.urls  import path, include

urlpatterns = [
    path('', views.index, name='index'),
    path('login/', views.sign_in, name='login'),
    path('reports/', views.reports, name='reports'),
    path('clients/', views.clients, name='clients')

]