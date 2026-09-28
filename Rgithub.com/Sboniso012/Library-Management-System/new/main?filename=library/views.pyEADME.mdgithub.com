from django.shortcuts import render
from .models import Book

def book_list(request):
    books = Book.objects.filter(owner='Sboniso012')
    return render(request, 'library/book_list.html', {'books': books})
