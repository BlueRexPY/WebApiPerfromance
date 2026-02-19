from django.urls import path

from djangoapi import views

urlpatterns = [
    path("", views.hello, name="hello"),
    path("postgresql/orders", views.orders, name="postgresql_orders"),
    path("mongodb/orders", views.mongodb_orders, name="mongodb_orders"),
]
