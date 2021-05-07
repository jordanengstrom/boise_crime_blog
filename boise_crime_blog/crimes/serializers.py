from rest_framework import serializers
from . models import Crime


class CrimeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Crime
        fields = ('project_id', 'project_name', 'project_text',
                  'project_image', 'project_link')