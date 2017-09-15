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

examples:
 - title: "OSN 2009: Paduan Suara"
   url: https://training.ia-toki.org/problemsets/66/problems/332/
   hint: Lakukan pengurutan terhadap tinggi suara bebek-bebek. Jika terdapat N bebek dan kita ingin bagi dalam K kelompok, maka tiap kelompok minimal terdiri dari \\(A = \lfloor\frac{N}{K} \rfloor\\) anggota. Dari data yang sudah terurut, kita hanya perlu mencari elemen dengan index \\(A, 2A, 3A, ..., (K-1)A\\)
   summary: bla

 - title: "OSN 2015: Pertahanan Yogya"
   url: https://training.ia-toki.org/problemsets/2/problems/4/
   hint: Kita tentukan nilai \\(Z_i\\), yang artinya banyaknya kemampuan tambahan yang diperlukan sebelum kita bisa mengalahkan musuh ke-i. Nilai ini bisa dicari dengan menggunakan binary search. Setelah itu, urutkan musuh-musuh berdasarkan nilai \\(Z_i\\) mereka. Setelah itu, cukup lakukan simulasi untuk menentukan jawaban.
   summary: bla

---

Dalam OSN, anda diharapkan menguasai teknik mengurutkan data berikut:

### Bubble sort
Bubble sort adalah teknik pengurutan data dengan membandingkan suatu elemen dengan elemen yang bersebelahan, dan menukarnya jika urutannya terbalik. Proses ini diulang hingga data terurut.

### Insertion Sort
Insertion sort bekerja dengan menyisipkan elemen pada data satu persatu sehingga hasil penyisipan selalu terurut.

### Counting Sort
Counting sort dilakukan dengan menghitung berapa kemunculan elemen dengan nilai 1, 2, 3, ..., hingga K. Kemudian, angka tersebut ditampilkan lagi secara terurut.
<!--more-->
- Perhatikan batasan-batasan dalam soal. Jika elemen-elemen pada soal memiliki range yang terbatas, misalnya umur, atau berat badan, biasanya dapat diurutkan dengan counting sort.
<!--more-->

### Merge Sort dan Quick Sort
Ini adalah teknik pengurutan lanjutan. Akan dijelaskan pada bab Divide and Conquer
<!--more-->
- Anda harus penguasai paling tidak satu teknik pengurutan dengan kompleksitas O(N log N) ini, karena umumnya teknik pengurutan kuadratik terlalu lambat untuk ukuran data pada soal OSN.
- Merge sort juga dapat digunakan untuk menyelesaikan inversi:
> Diberikan sebuah array dengan N buah bilangan. Anda ingin mengurutkan array tersebut dengan cara menukar 2 elemen bersebelahan. Berapa pertukaran (swap) minimal yang mungkin untuk mengurutkan array tersebut?

Jawaban dari soal tersebut adalah total swap yang terjadi saat melakukan merge sort.

<!--more-->
### Linear Search
Linear search adalah proses mencari elemen pada suatu data dengan membandingkan elemen yang ingin dicari pada setiap elemen pada data satu persatu.

### Binary Search
Jika data yang ada terurut, maka kita dapat mencari lebih efisien. Pada binary search, kita membandingkan elemen yang ingin dicari pada elemen tengah data. Jika elemen tersebut lebih kecil dari elemen tengah pada data, Anda cukup mencari lagi di separuh pertama data tersebut. Jika tidak, kita cari di separuh terakhir. Proses ini dilakukan hingga elemen ditemukan atau data sudah tidak bisa dibagi lagi.

<!--more-->
- Binary-search tidak hanya digunakan untuk mencari data. Kadang kala Anda harus melakukan Binary-Search pada jawaban. Salah satu indikasinya adalah jika jawaban yang Anda cari memiliki properti dimana jika N adalah jawaban valid, maka N+1 dijamin selalu valid. Contohnya:

CONTOH SOAL BINARY SEARCH DI JAWABAN.

#### Tips dan Trik Umum

- Biasanya dalam OSN tidak terdapat soal yang murni hanya pengurutan saja. Namun Anda perlu melakukan pengurutan data dahulu sebelum soal tersebut bisa diselesaikan.
- Jika Anda hanya perlu mengurutkan data saja, Anda akan menghemat waktu jika menggunakan C++, karena C++ memiliki STL untuk melakukan pengurutan:
{% highlight c++ %}
int a[] = {5, 4, 1, 3};
sort(a, a + 4); /* 4 adalah ukuran array */
{% endhighlight %}

- Jika Anda memiliki data yang terurut, Anda bisa menggunakan STL pada C++ untuk melakukan binary search.
{% highlight c++ %}
int a[] = {1, 2, 5, 10}; /* terurut */
int idx = lower_bound(a, a + 4, 5) - a;
cout<<idx<<endl; /* nilainya 3 (index 5 pada array a) */
{% endhighlight %}
#### Tautan Pendalaman Materi:
- [Materi Pengurutan dasar: Bubble Sort, Insertion Sort, dan Counting Sort](https://training.ia-toki.org/training/curriculums/1/courses/1/chapters/16/lessons/13/)
  
  catatan: Sorting lanjutan seperti Quick Sort dan Merge Sort akan dipelajari di bab Divide and Conquer
- [Materi Pencarian TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/1/chapters/15/lessons/12/)

<!--more-->

### Contoh soal

> Anda diberikan sebuah array A yang terdiri dari N buah bilangan. Keluarkan array tersebut dalam kondisi terurut menaik.
> ```
> Contoh  : A = [10, 7, 3, 6]
> Jawaban : [3, 6, 7, 10]
> ```

<!--more-->

Soal ini adalah soal pengurutan klasik. Soal ini bisa diselesaikan dengan salah satu teknik pengurutan, misalnya bubble sort.
Namun perlu diperhatikan, jika ukuran array cukup besar, maka harus menggunakan teknik pengurutan yang lebih cepat.

{% for example in page.examples %}
- [{{example.title}}]({{ example.url }})
> {{ example.summary }}
	<details>
	<summary>[Solusi]</summary>
	</details>

{% endfor %}


