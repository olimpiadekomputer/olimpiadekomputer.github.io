---
layout: page
title: Dynamic Programming
order: 6
---
Dynamic Programming (DP) merupakan sebuah teknik dalam strategi penyelesaian masalah. Seperti Greedy, suatu persoalan dapat diselesaikan dengan teknik DP jika solusi optimal dari persoalan dapat ditentukan dari solusi optimal sub-persoalan tersebut. Perbedaannya, pada DP, sub-persoalan tersebut muncul berkali-kali di mana kita menyimpan solusi optimal dari sub-persoalan tersebut dalam tabel. Untuk menguasai DP, dibutuhkan banyak latihan soal. DP hampir selalu muncul dalam OSN (Silahkan lihat contoh-contoh soal) dan sangat direkomendasikan untuk Anda menguasai topik ini.

Contoh soal:

> - Diberikan $$M$$ jenis koin, masing-masing jenis bernilai $$a_1, a_2, ..., a_M$$ rupiah.
> - Asumsikan terdapat tak hingga koin untuk setiap nominal koin yang ada. 
> - Tentukan berapa banyaknya minimum koin untuk membayar sebesar $$N$$ rupiah!
> 
> ```
> Contoh 1  : M = [1, 6, 10], N = 12
> Jawaban 1 : 2 (6 + 6)
> ```
<!--more-->

Soal tersebut adalah soal DP klasik "Coin Change". Mari perhatikan properti berikut:
- Untuk membayar $$N$$ rupiah, kita dapat memilih salah satu koin terlebih dahulu.
- Jika nilai koin itu adalah $$a_k$$, maka sisa uang uang perlu kita bayar adalah $$N-a_k$$.
- Perhatikan bahwa penukaran $$N - a_k$$ merupakan suatu sub-persoalan yang serupa dengan persoalan awalnya. Artinya, cara yang sama untuk menyelesaikan sub-persoalan dapat digunakan.

Bagaimana menyelesaikan soal tersebut secara DP?
- Definisikan sebuah fungsi $$f(x)$$ sebagai banyaknya koin minimum yang dibutuhkan untuk membayar $$x$$ rupiah.
- Kita dapat mencoba-coba koin yang ingin kita gunakan.
- Jika suatu koin $$a_k$$ digunakan, maka kita membutuhkan $$f(x-a_k)$$ koin ditambah satu koin $$a_k$$.
- Atau dapat ditulis $$f(x) = f(x-a_k) + 1$$
- Pencarian nilai $$f(x-a_k)$$ dilakukan secara rekursif, kita kembali mencoba-coba koin yang ingin digunakan.
- Fungsi $$f(x)$$ ini akan dikunjungi berkali-kali! Sehingga nilai $$f(x)$$ perlu kita simpan dalam tabel.

Ini adalah salah satu contoh permasalahan DP klasik. Untuk contoh-contoh klasik lainnnya, bisa dilihat di Materi Contoh DP Klasik TLX Training Gate berikut.

## Tautan Pendalaman Materi:
- [Materi Perkenalan DP TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/55/lessons/23/)
- [Materi Studi Kasus DP TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/55/lessons/24/)

## Rekomandasi Soal-soal latihan:
- [TLX: Perkalian Matriks Bebek](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/55/problems/252/) 
	<details>
	<summary>[Solusi]</summary>
	Ini adalah DP klasik "Matrix Chain Multiplication". Silahkan gunakan soal ini untuk berlatih implementasi DP.
	</details>

- [TLX: Palindrom](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/55/problems/245/) 
	<details>
	<summary>[Solusi]</summary>
	Carilah "Longest Common Subsequence" dari string S dan reverse(S). "Longest Common Subsequence" sendiri adalah salah satu DP klasik.
	</details>

- [TLX: Knapsack](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/55/problems/251/)
	<details>
	<summary>[Solusi]</summary>
	Ini adalah DP klasik "Knapsack". Silahkan gunakan soal ini untuk berlatih implementasi DP.
	</details>

- [TLX: Penukaran Emas](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/55/problems/244/)
	<details>
	<summary>[Solusi]</summary>
	Operasi penukaran emas dapat dituliskan dalam formula rekursif \(f(x) = max(x, f(\lfloor \frac{x}{2} \rfloor) + f(\lfloor \frac{x}{3}  \rfloor) + f(\lfloor \frac{x}{4}  \rfloor) ) \). Anda bisa gunakan memoisasi pada formula rekursif tersebut.
	</details>

- [OSN 2008: Memasang Lantai](https://training.ia-toki.org/problemsets/68/problems/344/)
	<details>
	<summary>[Solusi]</summary>
	Cari formula rekursifnya, lalu lakukan memoisasi. Petunjuk, mirip dengan deret fibonacci.
	</details>

- [OSN 2009: Sepatu](https://training.ia-toki.org/problemsets/66/problems/334/)
	<details>
	<summary>[Solusi]</summary>
	Coba urutkan dulu ukuran kaki bebek dan ukuran sepatu yang ada. Cobalah definisikan fungsi f(x,y) yang berarti solusi optimal jika saat ini kita sudah memroses x bebek pertama dan y sepatu pertama. Catatan, soal ini juga dapat diselesaikan dengan teknik Greedy!
	</details>

- [OSN 2010: Waterfall](https://training.ia-toki.org/problemsets/51/problems/247/)
	<details>
	<summary>[Solusi]</summary>
	Coba definisikan fungsi f(x,y) yang artinya adalah berapa banyak tabrakan terjadi jika air muncul dari titik (x,y)
	</details>

- [OSN 2013: Cuti Liburan](https://training.ia-toki.org/problemsets/43/problems/216/)
	<details>
	<summary>[Solusi]</summary>
	Anggaplah f(i,j,k) berarti total daya maksimal jika kita memiliki pilihan baju dari nomor 1 sampai i, kapasitas koper sebanyak j, dan sudah ada k warna berbeda dalam koper. Permasalahannya adalah, saat kita mencoba suatu baju ke-i sebagai solusi, kita tidak tahu apakah warna baju ke-i sudah ada sebelumnya. Untuk menangani ini, kita dapat mengurutkan baju-baju tersebut sesuai warnanya, sehingga baju dengan warna yang sama akan selalu bersebelahan. Selanjutnya tambahkan 1 buah state pada DP tersebut yang menyatakan apakah baju dengan warna yang sama dengan baju ke-i sudah pernah dibawa atau belum. Bentuk akhir DP ini menjadi f(i,j,k,z) dengan z = 0 jika baju dengan warna yang sama dengan baju ke-i belum pernah dibawa, atau 1 jika sebaliknya.
	</details>


- [OSN 2014: Pelontar Bebek](https://training.ia-toki.org/problemsets/39/problems/203/)
	<details>
	<summary>[Solusi]</summary>
	Perhatikan sudut maksimal hanyalah 1800, sehingga meskipun ada 100000 pilihan roda gigi yang tersedia, namun hanya akan ada maksimal 1800 pilihan roda gigi dengan sudut berbeda. Untuk setiap sudut, pilihlah roda gigi dengan kecepatan maksimal. Setelah itu, cukup lakukan DP untuk pendapatkan nilai f(i,j) yang berarti nilai kecepatan maksimum yang didapat jika kita memiliki pilihan roda gigi dari nomor 1 sampai nomor i, dan sudut yang dicapai adalah j. Setelah itu, cukup lakukan Brute Force untuk mendapatkan jarak tembak masing-masing sudut, dan carilah yang terjauh.
	</details>

- [OSN 2015: Menyiram Sawah](https://training.ia-toki.org/problemsets/2/problems/5/)
	<details>
	<summary>[Solusi]</summary>
	Pertama-tama, kita buat matriks baru D dengan nilai D[i,j] = 1 jika petak pada baris i dan kolom j adalah petak dominan, dan 0 jika sebaliknya.  Untuk persoalan ini, kita akan memerlukan 6 varian dari matriks tersebut:

	- Petak yang dominan terhadap keempat tetangganya.
	- Petak yang dominan terhadap seluruh tetangga kecuali petak di atasnya. 
	- Petak yang dominan terhadap seluruh tetangga kecuali petak di kirinya.
	- Petak yang dominan terhadap seluruh tetangga kecuali petak di bawahnya. 
	- Petak yang dominan terhadap seluruh tetangga kecuali petak di kanannya. 
	- Petak yang dominan terhadap tetangga di kiri dan kanannya. 

	Untuk masing-masing matriks, lakukan DP "Prefix sum 2D". Dengan 6 tabel DP berbeda, anda bisa menjawab setiap query dengan kompleksitas O(1). Detilnya diserahkan kepada Anda untuk latihan.
	</details>




