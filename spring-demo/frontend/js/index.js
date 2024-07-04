const list = document.getElementById('list')
        fetch('http://localhost:8000/book')
        .then(rsp=>rsp.json())
        .then(data=>{
            data.forEach(book => {
                const li = document.createElement('li')
                li.innerText = '${book.id} ${book.author} ${book.name} ${book.genre_id} ${book.ISBN} ${book.pages} ${new Date(book.publishedAt).toLocaleString('sr-RS')}'
                list.appendChild(li)
            });
        })