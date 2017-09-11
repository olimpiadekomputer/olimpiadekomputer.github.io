---
layout: page
title: Brute Force
order: 3
---
Brute-force merupakan suatu strategi penyelesaian masalah dengan mencoba semua kemungkinan. Brute-force menjamin solusi selalu benar, namun biasanya lambat karena menjelajahi semua kemungkinan solusi. Pada OSN, Brute-force berguna untuk menguji kebenaran solusi utama kita. Selain itu, biasanya tiap soal selalu memiliki sub-task yang bisa diselesaikan dengan teknik Brute-force.

Contoh soal:

> Anda diberikan sebuah array A yang terdiri dari N buah bilangan, dan juga bilangan K. Apakah terdapat subset dari bilangan-bilangan tersebut sehingga jumlahan dari elemen subset tersebut sama dengan K? item Bila iya, maka keluarkan "YA". Selain itu keluarkan "TIDAK"
> ```
> Contoh  1 : A = [1, 3, 6, 10], K = 14
> Jawaban 1 : "YA" (K = 1 + 3 + 10)
>
> Contoh  2 : A = [1, 3, 6, 10], K = 15
> Jawaban 2 : "TIDAK"
> ```

<!--more-->

Solusi soal di atas adalah:
- Untuk setiap elemen, kita memiliki 2 pilihan yaitu memilih elemen tersebut atau tidak memilihnya.
- Kita akan menelusuri semua kemungkinan pilihan.
- Jika jumlahan dari elemen-elemen yang dipilih sama dengan $$K$$, maka terdapat solusi.
- Hal ini dapat dengan mudah diimplementasikan secara rekursif.

Mari kita analisa solusi tersebut. Terdapat $$2^N$$ kemungkinan pilih-tidak pilih, sehingga kompleksitas solusi adalah $$O(2^N)$$. Nilai $$2^N$$ tumbuh dengan sangat cepat, sehingga solusi ini hanya dapat menyelesaikan soal tersebut jika $$N$$ kecil.

## Tautan Pendalaman Materi:
- [Materi Brute-Force TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/52/lessons/19/)

## Rekomandasi Soal-soal latihan:
- [OSN 2007: Permutasi Ekspresi](https://training.ia-toki.org/problemsets/69/problems/351/)
	<details>
	<summary>[Solusi]</summary>
	Lakukan simulasi, cari semua permutasi ekspresi yang valid. Karena masukan paling besar adalah 13 digit), maka ada 12 tempat di mana kita dapat menyelipkan operator '+', '-', atau tanpa operator. Sehingga total semua cara yang valid hanyalah 3^12. Untuk mengecek hasil ekspresi yang unik, cukup simpan seluruh hasil di array dan lakukan pengurutan.
	</details>

- [OSN 2012: Kontes Menari](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/52/problems/232/) 
	<details>
	<summary>[Solusi]</summary>
	Karena nilai N hanya 10, kita bisa coba lakukan brute-force di semua permutasi. Untuk setiap permutasi, simulasikan seluruh gerakan untuk mendapatkan total nilai keindahan, dan simpan pada array. Perhitungan kemungkinan rangkaian gerakan yang dapat memukau setiap juri dilakukan dengan melakukan pencarian pada array tersebut.</details>



