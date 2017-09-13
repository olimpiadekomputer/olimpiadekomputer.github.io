---
layout: page
title: Heap
order: 9
---

### Pendahuluan

Melalui dokumen ini, kalian akan:

-   Mengenal dan mengimplementasikan struktur data [[**heap**]$$]$$.

-   Mengetahui mengapa diperlukan [[**heap**]$$]$$

### Motivasi

Anda diberikan sejumlah operasi. Setiap operasi dapat berbentuk salah
satu dari:

-   add($$x$$): simpan bilangan $$x$$.

-   getMax(): dapatkan bilangan terbesar yang saat ini masih disimpan.

-   deleteMax(): hapus bilangan terbesar dari penyimpanan.

### Motivasi

Berikut contoh operasinya dan perilaku yang diharapkan:

-   add(5), bilangan yang disimpan: \[5\].

-   add(7), bilangan yang disimpan: \[5, 7\].

-   add(3), bilangan yang disimpan: \[5, 7, 3\].

-   getMax(), laporkan bahwa 7 merupakan bilangan terbesar.

-   deleteMax(), bilangan yang disimpan: \[5, 3\].

-   getMax(), laporkan bahwa 5 merupakan bilangan terbesar.

### Solusi Sederhana

-   Solusi paling mudah adalah membuat sebuah [[*array*]$$]$$besar dan
    variabel yang menunjukkan posisi terakhir elemen pada
    [[*array*]$$]$$.

-   Untuk setiap operasi add($$x$$), tambahkan elemen [[*array*]$$]$$,
    geser variabel penunjuk, lalu urutkan data.

-   Operasi getMax() dapat dilayani dengan mengembalikan elemen
    terbesar.

-   Operasi deleteMax() dapat dilayani dengan menggeser variabel
    penunjuk.

### Analisis Solusi Sederhana

-   Misalkan $$N$$ menyatakan banyaknya elemen pada [[*array*]$$]$$.

-   Dengan cara ini, operasi add($$x$$) berlangsung dalam $$O(N \log{N})$$,
    apabila pengurutannya menggunakan [**Quicksort**]$$.

-   Operasi getMax() dan deleteMax() berlangsung dalam $$O(1)$$.

-   Perhatikan bahwa pengurutan akan lebih efisien jika digunakan
    [**Insertion Sort**]$$, sehingga kompleksitas add($$x$$) menjadi
    $$O(N)$$.

### Analisis Solusi Sederhana

  Operasi        Dengan Sorting
  ------------- ----------------
  add($$x$$)           $$O(N)$$
  getMax()           $$O(1)$$
  deleteMax()        $$O(1)$$

### Masalah Solusi Sederhana

-   Solusi sederhana ini tidak efisien ketika banyak dilakukan operasi
    add($$x$$).

-   Kita akan mempelajari bagaimana [[**heap**]$$]$$mengatasi masalah
    ini secara efisien.

Pengenalan Heap
===============

### Heap

-   [[**Heap**]$$]$$merupakan struktur data yang umum dikenal pada ilmu
    komputer.

-   Nama [[**heap**]$$]$$sendiri berasal dari Bahasa Inggris, yang
    berarti “gundukan”.

### Operasi Heap

[[**Heap**]$$]$$mendukung operasi:

-   [**Push**]$$, yaitu memasukan elemen baru ke penyimpanan.

-   [**Pop**]$$, yaitu membuang elemen **terbesar** dari penyimpanan.

-   [**Top**]$$, yaitu mengakses elemen **terbesar** dari penyimpanan.

### Cara Kerja Heap

-   [[**Heap**]$$]$$dapat diimplementasikan dengan berbagai cara.

-   Kita akan mempelajari salah satunya, yaitu [[**Binary Heap**]$$]$$.

-   Sebelum itu, diperlukan pengetahuan mengenai [**tree**]$$.

### Tree

-   Seperti yang telah dipelajari, [[*tree*]$$]$$merupakan suatu
    [[*graph*]$$]$$yang setiap [[*node*]$$]$$-nya saling terhubung dan
    tidak memiliki [*cycle*]$$.

![image](asset/tree.pdf){width="7cm"}

### Rooted Tree

-   Suatu [[*tree*]$$]$$yang memiliki akar, atau [[*node*]$$]$$yang
    berada di paling atas disebut sebagai [*rooted-tree*]$$.

![image](asset/rooted-tree.pdf){width="7cm"}

### Binary Tree

-   Suatu [*rooted-tree*]$$ yang setiap [[*node*]$$]$$-nya memiliki 0,
    1, atau 2 anak disebut dengan [*Binary Tree*]$$.

![image](asset/binary-tree.pdf){width="7cm"}

### Full Binary Tree

-   Suatu [*binary tree*]$$ yang seluruh [[*node*]$$]$$-nya memiliki 2
    anak, kecuali tingkat paling bawah yang tidak memiliki anak, disebut
    dengan [*Full Binary Tree*]$$

![image](asset/full-binary-tree.pdf){width="7cm"}

### Complete Binary Tree

[*Complete Binary Tree*]$$ adalah [*binary tree*]$$ yang:

-   Seluruh [[*node*]$$]$$-nya memiliki 2 anak, kecuali tingkat paling
    bawah.

-   Tingkat paling bawahnya dapat terisi sebagian, tetapi harus terisi
    dari kiri ke kanan.

![image](asset/complete-binary-tree.pdf){width="7cm"}

### Bukan Complete Binary Tree

Berikut bukan [*Complete Binary Tree*]$$, sebab elemen di tingkat paling
bawah tidak berisi dari kiri ke kanan (terdapat lubang).

![image](asset/not-complete-binary-tree-1.pdf){width="7cm"}

### Bukan Complete Binary Tree

Berikut juga bukan [*Complete Binary Tree*]$$, sebab terdapat
[[*node*]$$]$$tanpa 2 anak pada tingkat bukan paling bawah.

![image](asset/not-complete-binary-tree-2.pdf){width="7cm"}

### Struktur Binary Heap

Struktur data [[**binary heap**]$$]$$memiliki sifat:

-   Berstruktur [*complete binary tree*]$$.

-   Setiap [[*node*]$$]$$merepresentasikan elemen yang disimpan pada
    [[**heap**]$$]$$.

-   Setiap [[*node*]$$]$$memiliki nilai yang **lebih besar** daripada
    [[*node*]$$]$$anak-anaknya.

### Contoh Binary Heap

![image](asset/heap.pdf){width="9cm"}

### Contoh Bukan Binary Heap

Bukan binary heap.

![image](asset/not-heap.pdf){width="9cm"}

### Mengapa Harus Demikian?

-   Struktur seperti ini menjamin operasi-operasi yang dilayani
    [[**heap**]$$]$$dapat dilakukan secara efisien.

-   Misalkan $$N$$ adalah banyaknya elemen yang sedang disimpan.

-   Operasi [**push**]$$ dan [**pop**]$$ bekerja dalam $$O(\log{N})$$,
    sementara [**top**]$$ bekerja dalam $$O(1)$$.

-   Kita akan melihat satu per satu bagaimana operasi tersebut
    dilaksanakan.

### Operasi Push

Melakukan [*push*]$$ pada [[**binary heap**]$$]$$dilakukan dengan 2
tahap:

-   Tambahkan [[*node*]$$]$$baru di posisi yang memenuhi aturan
    [*complete binary tree*]$$.

-   Selama elemen [[*node*]$$]$$yang merupakan orang tua langsung dari
    elemen ini memiliki nilai yang lebih kecil, tukar nilai elemen kedua
    [[*node*]$$]$$tersebut.

### Operasi Push

Sebagai contoh, misalkan hendak ditambahkan elemen bernilai 8 ke suatu
[[**binary heap**]$$]$$berikut:

![image](asset/heap.pdf){width="9cm"}

### Operasi Push (lanj.)

Tambahkan [[*node*]$$]$$.

![image](asset/push-1.pdf){width="9cm"}

### Operasi Push (lanj.)

Karena orang tua-nya memiliki nilai lebih kecil, tukar nilainya.

![image](asset/push-2.pdf){width="9cm"}

### Operasi Push (lanj.)

Karena orang tua-nya masih memiliki nilai lebih kecil, tukar lagi.

![image](asset/push-3.pdf){width="9cm"}

### Operasi Push (lanj.)

Orang tua-nya sudah memiliki nilai yang lebih besar.Operasi push
selesai.

![image](asset/push-4.pdf){width="9cm"}

### Operasi Pop

Melakukan [*pop*]$$ pada [[**binary heap**]$$]$$dilakukan dengan 2
tahap:

-   Tukar posisi elemen pada [*root*]$$ dengan elemen terakhir mengikuti
    aturan [*complete binary tree*]$$.

-   Buang elemen terakhir [[**binary heap**]$$]$$, yang telah berisi
    elemen dari [*root*]$$.

-   Selama elemen yang ditukar ke posisi [*root*]$$ memiliki anak
    langsung yang berelemen lebih besar, tukar elemen tersebut dengan
    salah anaknya yang memiliki elemen **terbesar**.

### Operasi Pop (lanj.)

Misalkan akan dilakukan pop pada [[**heap**]$$]$$berikut:

![image](asset/pop-1.pdf){width="9cm"}

### Operasi Pop (lanj.)

Tukar elemen pada [*root*]$$ dengan elemen terakhir pada [*complete
binary tree*]$$.

![image](asset/pop-2.pdf){width="9cm"}

### Operasi Pop (lanj.)

Buang elemen terakhir.

![image](asset/pop-3.pdf){width="9cm"}

### Operasi Pop (lanj.)

Perbaiki struktur [[**heap**]$$]$$dengan menukar elemen pada [*root*]$$
dengan anaknya yang bernilai **terbesar**.

![image](asset/pop-4.pdf){width="9cm"}

### Operasi Pop (lanj.)

Karena masih terdapat anaknya yang lebih besar, tukar lagi.

![image](asset/pop-5.pdf){width="9cm"}

### Operasi Pop (lanj.)

Kini sudah tidak ada anak yang bernilai lebih besar, operasi pop
selesai.

![image](asset/pop-6.pdf){width="9cm"}

### Operasi Top

-   Operasi ini sebenarnya sesederhana mengembalikan elemen pada
    [*root*]$$ [[**binary heap**]$$]$$.

-   Kompleksitas operasi ini adalah $$O(1)$$.

### Analisis Solusi dengan Heap

Penerapan [[**heap**]$$]$$pada persoalan motivasi:

  Operasi        Dengan Sorting   Dengan Heap
  ------------- ---------------- --------------
  add($$x$$)           $$O(N)$$       $$O(\log{N})$$
  getMax()           $$O(1)$$          $$O(1)$$
  deleteMax()        $$O(1)$$       $$O(\log{N})$$

Kini seluruh operasi dapat dilakukan dengan efisien.

Implementasi Binary Heap
========================

### Membuat Tree

-   Representasi [[*tree*]$$]$$pada implementasi dapat menggunakan
    teknik representasi [[*graph*]$$]$$yang telah dipelajari sebelumnya.

-   Namun, untuk [[*tree*]$$]$$dengan kondisi tertentu, kita dapat
    menggunakan representasi yang lebih sederhana.

-   Terutama pada kasus ini, yang mana [[*tree*]$$]$$yang diperlukan
    adalah [*complete binary tree*]$$.

### Representasi Complete Binary Tree

-   Kedengarannya kurang masuk akal, tetapi [*complete binary tree*]$$
    dapat direpresentasikan dengan sebuah [[*array*]$$]$$.

-   Misalkan [[*array*]$$]$$ini bersifat [*zero-based*]$$, yaitu dimulai
    dari indeks 0.

-   Elemen pada indeks ke-$$i$$ menyatakan elemen pada
    [[*node*]$$]$$ke-$$i$$.

-   Anak kiri dari [[*node*]$$]$$ke-$$i$$ adalah
    [[*node*]$$]$$ke-$$(2i+1)$$.

-   Anak kanan dari [[*node*]$$]$$ke-$$i$$ adalah
    [[*node*]$$]$$ke-$$(2i+2)$$.

### Representasi Complete Binary Tree (lanj.)

TODO: GAMBAR REPRESENTASI ARRAY

### Representasi Complete Binary Tree (lanj.)

-   Dengan logika yang serupa, orang tua dari [[*node*]$$]$$ke-$$i$$
    adalah [[*node*]$$]$$ke-$$\lfloor\frac{i-1}{2}\rfloor$$

-   Apabila Anda memutuskan untuk menggunakan [*one-based*]$$, berarti
    rumusnya menjadi:

    -   Anak kiri: $$2i$$.

    -   Anak kanan: $$2i+1$$.

    -   Orang tua: $$\lfloor \frac{i}{2} \rfloor$$

-   Representasi ini sangat mempermudah implementasi [[**binary
    heap**]$$]$$.

### Implementasi Push

TODO

### Implementasi Pop

TODO

### Implementasi Top

TODO

### Catatan Implementasi

-   Tentu saja, Anda dapat membuat [[**heap**]$$]$$dengan urutan yang
    terbalik, yaitu elemen terkecilnya di atas.

-   Dengan demikian, operasi yang didukung adalah mencari atau menghapus
    elemen terkecil.

-   Biasanya [[**heap**]$$]$$dengan sifat ini disebut dengan
    [**min-heap**]$$, sementara [[**heap**]$$]$$dengan elemen terbesar
    di atas disebut dengan [**max-heap**]$$.

### Manfaat Heap

-   Pada ilmu komputer, [[**heap**]$$]$$dapat digunakan sebagai
    *priority queue*, yaitu antrian yang terurut menurut suatu kriteria.

-   Sifat [[**heap**]$$]$$juga dapat digunakan untuk optimisasi suatu
    algoritma. Contoh paling nyatanya adalah untuk mempercepat algoritma
    [**Dijkstra**]$$.

-   Berbagai solusi persoalan [**greedy**]$$ juga dapat
    diimplementasikan secara efisien dengan [[**heap**]$$]$$.

### Library Heap

-   Bagi pengguna C++, struktur data “priority\_queue” dari include
    algorithm merupakan struktur data [[**heap**]$$]$$.

-   Bagi pengguna Pascal, Anda perlu mengimplementasikan
    [[**heap**]$$]$$sendiri.

### Penutup

-   TODO: kasih tau heapify gak diajarin


