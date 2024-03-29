from django.db import models


class HellowWorld(models.Model):
    text = models.CharField(max_length=255, null=False)
