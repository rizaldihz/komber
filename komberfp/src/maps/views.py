from django.shortcuts import render
from django.db import connection
from django.http import JsonResponse

# Create your views here.
def home_view(request, *args, **kwargs):
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM status ORDER BY id DESC LIMIT 1")
        row = cursor.fetchone()
    data = {'nama':row[1],'latitude':row[2],'longitude':row[3],'aktivitas':row[4]}
    if request.is_ajax():
        return JsonResponse(data)
    return render(request, 'home.html', data)
