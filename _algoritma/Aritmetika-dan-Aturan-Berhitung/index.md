---
layout: page
title: Aritmetika dan aturan berhitung
order: 1
subsections:
- Aritmetika modular
- Bilangan prima
- KPK dan FPB
- Pigeonhole Principle
- Aturan perkalian dan penjumlahan
- Permutasi dan kombinasi
- Probabilitas
- Prinsip Inklusi dan Eksklusi
- Segitiga Pascal

examples:
 - title: "TLX: Faktorisasi Prima"
   url: https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/problems/225/
   hint: Cari seluruh faktor prima dari masukan. Kemudian cetak sesuai keinginan.
   summary: bla

 - title: "TLX: Penjumlahan Pecahan"
   url: https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/problems/226/
   hint: \\(E = \frac{(A \times D + B \times C)}{gcd(C,D)}\\) dan \\(F = \frac{C \times D}{gcd(C,D)}\\)
   summary: bla

 - title: "TLX: Prima ke-K"
   url: https://training.ia -toki.org/training/curriculums/1/courses/11/chapters/51/problems/227/
   hint: Gunakan Sieve of Erathosthenes untuk menghasilkan 77.777 bilangan prima pertama. Kemudian cetak sesuai masukan.
   summary: bla

 - title: "TLX: Pasar Rakyat"
   url: https://training.ia -toki.org/training/curriculums/1/courses/11/chapters/51/problems/228/
   hint: Hitung KPK dari seluruh masukan
   summary: bla

 - title: "OSN 2006: Faktorial"
   url: https://training.ia -toki.org/problemsets/70/problems/352/
   hint: Menghitung nilai asli dari N! tidak memungkinkan karena terlalu besar. Namun, kita cukup mencari banyaknya faktor 2 dan 5 dari N!, karena 2*5 = 10 (menghasilkan digit 0)
   summary: bla

 - title: "Codeforces: Random Teams"
   url: http://codeforces.com/problemset/problem/478/B
   hint: Untuk pasangan teman minimum, distribusikan tim dengan semerata mungkin. Untuk pasangan teman maksimum, distribusikan tim dengan anggota 1 untuk m -1 tim, dan sisanya di tim terakhir. Banyaknya pasangan teman dari suatu tim dengan anggota X orang adalah kombinasi 2 dari X.
   summary: bla
---

Aritmetika dan aturan berhitung melingkupi:

### Aritmetika modular
Memahami konsep operasi modular. Operasi \\(a \bmod m\\), atau biasa disebut "\\(a\\) modulo \\(m\\)" memberikan sisa hasil bagi \\(a\\) oleh \\(m\\).
### Bilangan prima
Bilangan prima adalah bilangan bulat positif yang hanya habis dibagi oleh 1 dan dirinya sendiri. Memahami algoritma-algoritma untuk mengecek bilangan prima, menghasilkan bilangan prima, ataupun melakukan faktorisasi prima.
### KPK dan FPB
Mencari KPK dan FPB dengan memanfaatkan faktorisasi prima.

### Pigeonhole Principle
Konsep PHP menyatakan bahwa "Jika ada \\(N\\) burung dan \\(M\\) sangkar, dimana \\(N > M\\) , maka ada sangkar yang berisi setidaknya 2 ekor burung".
Secara matematis, jika ada \\(N\\) burung dan \\(M\\) sangkar, maka ada sangkar yang berisi setidaknya \\(\big\lceil \frac{N}{M} \big\rceil\\) ekor burung.
#### Aturan perkalian dan penjumlahan

### Permutasi dan kombinasi
Permutasi dari \\(N\\) adalah seluruh cara pengurutan \\(N\\) objek tersebut. Banyaknya permutasi dari \\(N\\) dinyatakan dalam faktorial, atau \\(N!\\).
<!--more--> Rumus faktorial, dinotasikan \\(N!\\) adalah hasil kali dari 1 sampai \\(N\\), sehingga \\(N! = 1 \times 2 \times 3 \times \dots \times N\\) <!--more-->
Kombinasi adalah banyaknya cara mengambil \\(K\\) buah objek dari \\(N\\) pilihan yang ada, tanpa memerdulikan urutan. Notasi kombinasi ini dinyatakan dalam \\(C^{N}_{K} = \\).

### Probabilitas
Menghitung kemungkinan terjadinya suatu persistiwa. Secara umum, probabilitas direpresentasikan dalam bentuk \\(\frac{A}{B}\\) dimana A adalah total cara terjadinya peristiwa yang diinginkan dan B adalah total cara terjadinya semua peristiwa. Sebagai contoh, jika terdapat \\(N\\) bola merah dan \\(M\\) bola biru, dan Anda mengambil tepat 2 bola secara acak, berapa kemungkinan bahwa kedua bola berwarna biru? Banyaknya cara mengambil 2 bola biru adalah \\(C^{N}_{2} \\) dan banyaknya cara mengambil 2 bola sembarang warna adalah \\(C^{N+M}_2 \\).

### Prinsip Inklusi dan Eksklusi

### Segitiga Pascal
Segitiga Pascal merupakan susunan dari Koefisien Binomial dalam bentuk segitiga.
Nilai dari baris ke-n suku ke-r adalah \\(A_{ij} = C^{n}_{r}\\).

Contoh soal:

> Anda diberikan sebuah string S. Ada berapa kata berbeda yang dapat disusun dari huruf-huruf penyusun kata S?
> ``` 
> Contoh 1  : S = 'aba'. 
> Jawaban 1 : 3 ('aab', 'aba', 'baa')
> 
> Contoh 2  : S = 'MEGAGIGA'
> Jawaban 2 : 3360
> ```
<!--more-->

Soal tersebut adalah soal kombinatorik. Mari kita selesaikan contoh 2 terlebih dahulu.
 - Terdapat 8 huruf, sehingga banyak kata yang dapat disusun adalah \\(8!\\).
 - Terdapat 3 huruf 'G' sehingga terdapat 6 kata yang kita anggap berbeda ( \\(G_{1} G_{2} G_{3} , G_{1} G_{3} G_{2} , \dots , G_{3} G_{2} G_{1} \\) ) yang mana seharusnya keenam kata tersebut merupakan kata yang sama.
 - Dengan prinsip Redundansi, maka banyak kata yang dapat disusun mengingat kesamaan kata pada huruf G adalah \\(\frac{8!}{3!}\\).
 - Perlu kita perhatikan pula bahwa terdapat 2 huruf A, sehingga dengan cara yang sama akan didapatkan banyak kata yang berbeda adalah \\(\frac{8!}{(3! \times 2!)} = 3360\\).

Maka, solusi secara umum
 - Terdapat N huruf, sehingga banyak kata yang dapat kita susun adalah \\(N!\\).
 - Apabila terdapat K huruf dengan setiap hurufnya memiliki \\(R_{i}\\) huruf yang sama, maka dengan prinsip Redundansi banyak kata berbeda yang dapat disusun adalah \\(\frac{N!}{(R_{1}! \times R_{2}! \times R_{3}! \times ... \times R_{K}!)}\\).
 - Rumus itulah yang kita kenal dengan Permutasi Elemen Berulang.

#### Tautan Pendalaman Materi:
- [Materi Kombinatorik TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/lessons/18/)
- [Materi Matematika Diskret TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/lessons/17/)

#### Rekomandasi Soal-soal latihan:

{% for example in page.examples %}
- [{{example.title}}]({{ example.url }})
	<details>
	<summary>[Solusi]</summary>
	{{ example.hint }}
	</details>

{% endfor %}

	


