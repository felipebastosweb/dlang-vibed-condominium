

+++
class Meeutup(models.Model):
    title = models.TextField()
    description = models.TextField()
    day = models.DateTimeField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Minute(models.Model):
    meetup = models.ForeignKey(Meetup, on_delete=models.CASCADE)
    description = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
+++
