package com.example.spring_demo.controller;

import com.example.spring_demo.entity.Book;
import com.example.spring_demo.service.BookService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/api/book")
@RequiredArgsConstructor
@CrossOrigin
public class BookController {

    private final BookService service;

    @GetMapping
    public List<Book> getAllBooks() {
        return service.getAllBooks();
    }

    @GetMapping(path = "/{id}")
    public ResponseEntity<Book> getBookById(@PathVariable Integer id) {
        return ResponseEntity.of(service.getBookById(id));
    }
    @GetMapping(path = "/ISBN/{ISBN}")
    public ResponseEntity<Book> getBookByISBN(@PathVariable String ISBN) {
        return ResponseEntity.of(service.getBookByISBN(ISBN));
    }
}
