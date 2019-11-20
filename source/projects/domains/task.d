module projects.domains.task;

+++
class Task(models.Model):
    project = models.ForeignKey(Project, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    start_at = models.DateField()
    ends_at = models.DateField()
    predecessor = models.ForeignKey(Task, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


class TaskResource(models.Model):
    task = models.ForeignKey(Task, on_delete=models.CASCADE)
    resource = models.ForeignKey(Resource, on_delete=models.CASCADE)
    cost = models.DecimalField(19, 2)
+++
