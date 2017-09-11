---
layout: page
title: Pengurutan dan Pencarian
order: 2
subsections:
- Bubble Sort
- Insertion Sort
- Counting Sort
- Merge dan Quick Sort
- Linear Search
- Binary Search
---

Pengurutan melingkupi teknik-teknik mengurutkan data, seperti:

- #### Bubble sort
Bubble sort adalah teknik pengurutan data dengan membandingkan suatu elemen dengan elemen yang bersebelahan, dan menukarnya jika urutannya terbalik. Proses ini diulang hingga data terurut.
- #### Insertion Sort
Insertion sort bekerja dengan menyisipkan elemen pada data satu persatu sehingga hasil penyisipan selalu terurut.

- #### Counting Sort
Counting sort dilakukan dengan menghitung berapa kemunculan elemen dengan nilai 1, 2, 3, ..., hingga K. Kemudian, angka tersebut ditampilkan lagi secara terurut.

- #### Merge Sort dan Quick Sort
Ini adalah teknik pengurutan lanjutan. Akan dijelaskan pada bab Divide and Conquer

Sesuai namanya, pencarian adalah proses mencari suatu elemen pada data. Secara umum terdapat 2 teknik pencarian:
- #### Linear Search
Linear search adalah proses mencari elemen pada suatu data dengan membandingkan elemen yang ingin dicari pada setiap elemen pada data satu persatu.
- #### Binary Search
Jika data yang ada terurut, maka kita dapat mencari lebih efisien. Pada binary search, kita membandingkan elemen yang ingin dicari pada elemen tengah data. Jika elemen tersebut lebih kecil dari elemen tengah pada data, Anda cukup mencari lagi di separuh pertama data tersebut. Jika tidak, kita cari di separuh terakhir. Proses ini dilakukan hingga elemen ditemukan atau data sudah tidak bisa dibagi lagi.

Contoh soal 1:

> Anda diberikan sebuah array A yang terdiri dari N buah bilangan. Keluarkan array tersebut dalam kondisi terurut menaik.
> ```
> Contoh  : A = [10, 7, 3, 6]
> Jawaban : [3, 6, 7, 10]
> ```

Contoh soal 2:
> Anda diberikan sebuah array A yang terdiri dari N buah bilangan, dan sebuah bilangan D. Tentukan indeks dari bilangan D pada array tersebut. Jika D tidak ditemukan, keluarkan -1
> ```
> Contoh 1  : A = [10, 7, 3, 6] , D = 7
> Jawaban 1 : 2
> 
> Contoh 1  : A = [10, 7, 3, 6] , D = 9
> Jawaban 1 : -1
> ```

<!--more-->

Soal pertama adalah soal pengurutan klasik. Soal ini bisa diselesaikan dengan salah satu teknik pengurutan, misalnya bubble sort.
Namun perlu diperhatikan, jika ukuran array cukup besar, maka harus menggunakan teknik pengurutan yang lebih cepat.

Soal kedua adalah soal pencarian. Solusinya adalah dengan melakukan sequential search sebagai berikut:
- Periksa satu per satu dari sepatu pertama, kedua, ketiga, dan seterusnya.
- Jika ditemukan, langsung laporkan.
- Jika sampai akhir belum juga ditemukan, artinya angka yang dicari tidak ada pada daftar.

## Tautan Pendalaman Materi:
- [Materi Pengurutan dasar: Bubble Sort, Insertion Sort, dan Counting Sort](https://training.ia-toki.org/training/curriculums/1/courses/1/chapters/16/lessons/13/)
  
  catatan: Sorting lanjutan seperti Quick Sort dan Merge Sort akan dipelajari di bab Divide and Conquer
- [Materi Pencarian TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/1/chapters/15/lessons/12/)

## Rekomandasi Soal-soal latihan:
- [OSN 2009: Paduan Suara](https://training.ia-toki.org/problemsets/66/problems/332/) 
	<details>
	<summary>[Solusi]</summary>
	Lakukan pengurutan terhadap tinggi suara bebek-bebek. Jika terdapat N bebek dan kita ingin bagi dalam K kelompok, maka tiap kelompok minimal terdiri dari \(A = \lfloor\frac{N}{K} \rfloor\) anggota. Dari data yang sudah terurut, kita hanya perlu mencari elemen dengan index \(A, 2A, 3A, ..., (K-1)A\)
	</details>


- [OSN 2015: Pertahanan Yogya](https://training.ia-toki.org/problemsets/2/problems/4/) 
	<details>
	<summary>[Solusi]</summary>
	Kita tentukan nilai \(Z_i\), yang artinya banyaknya kemampuan tambahan yang diperlukan sebelum kita bisa mengalahkan musuh ke-i. Nilai ini bisa dicari dengan menggunakan binary search. Setelah itu, urutkan musuh-musuh berdasarkan nilai \(Z_i\) mereka. Setelah itu, cukup lakukan simulasi untuk menentukan jawaban.
	</details>



