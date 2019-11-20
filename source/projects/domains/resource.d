module projects.domains.resource;

+++
class Resource(models.Model):
    name = models.CharField()
    type = models.CharField(max_length=255)
    amount = models.IntegerField()
    cost = models.DecimalField(19, 2)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
+++
