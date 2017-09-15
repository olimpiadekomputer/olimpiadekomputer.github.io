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
   summary: Anda diberikan sebuah bilangan bulat \\(N (1 \le N \le 1.000.000)\\) . Tentukan bilangan-bilangan prima a1, a2, ..., ak dan pangkat-pangkatnya, b1, b2, ..., bk, sehingga \\(N = a1^{b1} \times a2^{b2} \times \dots \times ak^{bk}\\).

 - title: "TLX: Penjumlahan Pecahan"
   url: https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/problems/226/
   hint: Jawaban adalah dalam bentuk E/F di mana \\(E = \frac{(A \times D + B \times C)}{gcd(C,D)}\\) dan \\(F = \frac{C \times D}{gcd(C,D)}\\)
   summary: Anda diberikan dua buah pecahan dalam bentuk A/B dan C/D. Hitunglah A/B + C/D, lalu cetak hasilnya dalam bentuk yang paling sederhana. Bentuk paling sederhana dari suatu pecahan adalah ketika FPB dari pembilang dan penyebutnya adalah 1.

 - title: "TLX: Prima ke-K"
   url: https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/problems/227/
   hint: Anda dapat melakukan perulangan dari 1,2,3, dan seterusnya. Pada setiap bilangan, cek apakah bilangan tersebut adalah bilangan prima. Namun, solusi tersebut tidak efisien, mengingat Anda harus mencari bilangan prima ke-K pada banyak nilai K berbeda! Gunakan Sieve of Erathosthenes untuk menghasilkan 77.777 bilangan prima pertama. Kemudian cetak sesuai masukan.
   summary: Carilah bilangan prima ke-K. Buatlah program yang efisien agar Anda dapat menjawab pertanyaan tersebut berkali-kali!

 - title: "TLX: Pasar Rakyat"
   url: https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/problems/228/
   hint: Hitung KPK dari seluruh nilai \\(D_i\\)
   summary: Ada N Pedagang yang datang mengunjungi suatu pasar secara periodik dalam beberapa hari sekali. Pedagang ke-i datang setiap \\(D_i\\) hari sekali. Setiap berapa hari sekali semua pedagang akan datang secara bersamaan?

 - title: "OSN 2006: Faktorial"
   url: https://training.ia-toki.org/problemsets/70/problems/352/
   hint: Menghitung nilai asli dari N! tidak memungkinkan karena terlalu besar. Namun, kita cukup mencari banyaknya faktor 2 dan 5 dari N!, karena 2*5 = 10 (menghasilkan digit 0)
   summary: Carilah berapa angka 0 berurutan yang mengakhiri \\(N!\\). Misalnya 10! = 3.628.800, maka jumlah 0 berurutan adalah 2. Sementara 8! = 40.320, maka jumlah 0 berurutan adalah 1 (nol di tengah tidak dihitung).

 - title: "Codeforces: Random Teams"
   url: http://codeforces.com/problemset/problem/478/B
   hint: Untuk pasangan teman minimum, distribusikan tim dengan semerata mungkin. Untuk pasangan teman maksimum, distribusikan tim dengan anggota 1 untuk m -1 tim, dan sisanya di tim terakhir. Banyaknya pasangan teman dari suatu tim dengan anggota X orang adalah kombinasi 2 dari X.
   summary: bla
---

Aritmetika dan aturan berhitung melingkupi:

### Aritmetika modular
Operasi \\(a \bmod m\\), atau biasa disebut "\\(a\\) modulo \\(m\\)" memberikan sisa hasil bagi \\(a\\) oleh \\(m\\).
Fungsi mod ini biasa muncul di OSN untuk menghindari angka yang terlalu besar.
<!--more-->

Sifat modulo:
 - \\((A \times B) \mod C = ((A \mod C) \times (B \mod C)) \mod C\\)
 - \\((A + B) \mod C = ((A \mod C) + (B \mod C)) \mod C\\)
 - \\((A - B) \mod C = ((A \mod C) - (B \mod C) + C) \mod C\\)
 - \\((A / B) \mod C = (A \times (B^{C-2} \mod C)) \mod C\\) , hanya berlaku jika C adalah prima

<!--more-->

### Bilangan prima

Bilangan prima adalah bilangan bulat positif yang hanya habis dibagi oleh 1 dan dirinya sendiri. Anda diharapkan dapat melakukan pengecekan prima dengan cara perulangan dari 2 sampai \\(\sqrt{N}\\), maupun dengan teknik sieve of erathothenes.

### KPK dan FPB
Anda diharapkan dapat mencari KPK dan FPB dengan memanfaatkan faktorisasi prima.
<!--more-->
- fpb(A,0) = A
- fpb(A,B) = fpb(B, A mod B)
- kpk(A,B) = A x B / fpb(A, B)

Dalam C++, fpb dapat dihitung menggunakan fungsi berikut:
{% highlight c++ %}
 cout<< __gcd(10,4) << endl;
{% endhighlight %}
<!--more-->

### Pigeonhole Principle
Konsep PHP menyatakan bahwa "Jika ada \\(N\\) burung dan \\(M\\) sangkar, dimana \\(N > M\\) , maka ada sangkar yang berisi setidaknya 2 ekor burung".
Secara matematis, jika ada \\(N\\) burung dan \\(M\\) sangkar, maka ada sangkar yang berisi setidaknya \\(\big\lceil \frac{N}{M} \big\rceil\\) ekor burung.

### Aturan perkalian dan penjumlahan

### Permutasi dan kombinasi
Permutasi dari \\(N\\) adalah seluruh cara pengurutan \\(N\\) objek tersebut. Banyaknya permutasi dari \\(N\\) dinyatakan dalam faktorial, atau \\(N!\\).
<!--more--> Rumus faktorial, dinotasikan \\(N!\\) adalah hasil kali dari 1 sampai \\(N\\), sehingga \\(N! = 1 \times 2 \times 3 \times \dots \times N\\) <!--more-->
Kombinasi adalah banyaknya cara mengambil \\(K\\) buah objek dari \\(N\\) pilihan yang ada, tanpa memerdulikan urutan. Notasi kombinasi ini dinyatakan dalam \\(C^{N}_{K} = \frac{N!}{K!(N-K)!}\\).
<!--more-->

Untuk menghitung kombinasi dengan nilai N besar, Anda tidak dapat melakukan perhitungan N! terlebih dahulu, kemudian menghitung pembaginya. Manfaatkan sifat modulo pembagian!
<!--more-->


### Probabilitas
Menghitung kemungkinan terjadinya suatu persistiwa. Sebagai contoh, jika terdapat \\(N\\) bola merah dan \\(M\\) bola biru, dan Anda mengambil tepat 2 bola secara acak, berapa kemungkinan bahwa kedua bola berwarna biru? Banyaknya cara mengambil 2 bola biru adalah \\( C^N_2 \\) dan banyaknya cara mengambil 2 bola sembarang warna adalah \\(C_2^{N+M} \\), maka probabilitasnya adalah \\( \frac{C^{N}_{2}}{C^{N+M}_2}\\) .

### Prinsip Inklusi dan Eksklusi

### Segitiga Pascal
Segitiga Pascal merupakan susunan dari Koefisien Binomial dalam bentuk segitiga.
Nilai dari baris ke-n suku ke-r adalah \\(A_{ij} = C^{n}_{r}\\).

#### Tautan Pendalaman Materi:
- [Materi Kombinatorik TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/lessons/18/)
- [Materi Matematika Diskret TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/51/lessons/17/)

### Contoh soal:

> Anda diberikan sebuah string S. Ada berapa kata berbeda yang dapat disusun dari huruf-huruf penyusun kata S?
> ``` 
> Contoh 1  : S = 'aba'. 
> Jawaban 1 : 3 ('aab', 'aba', 'baa')
> 
> Contoh 2  : S = 'MEGAGIGA'
> Jawaban 2 : 3360
> ```
<!--more-->

Solusi soal tersebut adalah:
 - Terdapat N huruf, sehingga banyak kata yang dapat kita susun adalah \\(N!\\).
 - Apabila terdapat K huruf dengan setiap hurufnya memiliki \\(R_{i}\\) huruf yang sama, maka dengan prinsip Redundansi banyak kata berbeda yang dapat disusun adalah \\(\frac{N!}{(R_{1}! \times R_{2}! \times R_{3}! \times ... \times R_{K}!)}\\).

{% for example in page.examples %}
[{{example.title}}]({{ example.url }})
> {{ example.summary | markdownify }}
<details>
	<summary>[Solusi]</summary>
	{{ example.hint | markdownify }}
</details>

{% endfor %}

	



