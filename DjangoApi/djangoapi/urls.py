from django.urls import path

from djangoapi import views

urlpatterns = [
    path("", views.hello, name="hello"),
    path("orders", views.orders, name="orders"),
]
