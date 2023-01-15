from django.db import models


class Note(models.Model):
    title = models.CharField(max_length=120)
    content = models.TextField()
    archived = models.BooleanField(default=False)

    def _str_(self):
        return self.title
