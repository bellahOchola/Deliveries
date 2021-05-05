from . import views
from django.urls  import path, include

urlpatterns = [
    path('', views.index, name='index'),
    path('reports/', views.reports, name='reports'),
    path('clients/', views.clients, name='clients')

]