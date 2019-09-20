from django.urls import path

from . import views

urlpatterns = [
    path('forums/', views.forums_index, name='forums_index'),
    path('forums/<int:id>', views.forums_show, name='forums_show'),
    path('forums/create', views.forums_create, name='forums_create'),
    path('forums/<int:id>/update', views.forums_update, name='forums_update'),
    path('forums/<int:id>/delete', views.forums_delete, name='forums_delete'),
]
