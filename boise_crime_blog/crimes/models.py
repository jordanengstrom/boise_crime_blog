from django.db import models


class Crime(models.Model):
    crime_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100)
    content = models.TextField()

    def __str__(self):
        return self.title
