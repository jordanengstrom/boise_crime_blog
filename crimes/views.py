from django.shortcuts import render

class CrimeListView(ListAPIView):
    queryset = Crime.objects.all()
    serializer_class = CrimeSerializer
