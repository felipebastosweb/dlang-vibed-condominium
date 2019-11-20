module forums.domains.post;

+++

class Post(models.Model):
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    forum = models.ForeignKey(Topic, on_delete=models.CASCADE)
    title = models.CharField(max_length=255)
    slug = models.SlugField(max_length=255)
    description = models.TextField()
    replies_count = models.PositiveIntegerField()
    created_at = models.DateTimeField(auto_now_add = True)
    updated_at = models.DateTimeField(auto_now = True)

+++
