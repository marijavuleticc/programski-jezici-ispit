package com.example.spring_demo.service;

import com.example.spring_demo.entity.Book;
import com.example.spring_demo.repository.BookRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class BookService {

    private final BookRepository repository;
    public List<Book> getAllBooks(){
        return repository.findAll();
    }
    public Optional<Book> getBookById(Integer id){
        return repository.findById(id);
    }

    public Optional<Book> getBookByISBN(String ISBN){
        return repository.findByISBN(ISBN);
    }
}
