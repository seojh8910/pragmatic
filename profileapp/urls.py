from django.urls import path, include


app_name = "profileapp"
urlpatterns = [
    path("hello_world/", hello_world, name='hello_world'),
]

