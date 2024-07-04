package com.example.spring_demo.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity(name = "book")
@NoArgsConstructor
@Getter
@Setter
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_id")
    private Integer id;

    @Column(nullable = false)
    private String author;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false,unique = true)
    private Integer genre_id;
    @Column(nullable = false,unique = true)
    private String ISBN;
    @Column(nullable = false)
    private Integer pages;
    @Column(nullable = false)
    private LocalDateTime publishedAt = LocalDateTime.now();

}
