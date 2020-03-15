from rest_framework import routers
from projects.api.views import ProjectViewSet  # ok to ignore warning here


router = routers.DefaultRouter()
router.register(r'projects', ProjectViewSet)