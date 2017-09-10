---
layout: page
title: Greedy
order: 5
---
merupakan sebuah teknik dalam strategi penyelesaian masalah. Suatu persoalan dapat diselesaikan dengan teknik Greedy jika persoalan tersebut memiliki memiliki properti berikut:
    - Solusi optimal dari persoalan dapat ditentukan dari solusi optimal sub-persoalan tersebut.
    - Pada setiap sub-persoalan, ada suatu langkah yang bisa dilakukan yang mana langkah tersebut menghasilkan solusi optimal pada sub-persoalan tersebut. Langkah ini disebut juga Greedy Choice.

Contoh soal:

> Diberikan $$N$$ buah aktivitas.
> - Aktivitas ke-$$i$$ dinyatakan dalam $$<a_i.start, a_i.end>$$.
> - Artinya, aktivitas ini dimulai pada waktu $$a_i.start$$ dan berakhir pada waktu $$a_i.end$$.
> - Pada setiap satuan waktu, Anda dapat mengikuti paling banyak satu aktivitas.
> - Anda ingin mengatur jadwal sedemikian sehingga Anda bisa ikut aktivitas sebanyak mungkin.
> ```
> Contoh  : aktifitas = [<1, 3> , <2, 6>, <5, 7>,  <8, 9>]
> Jawaban : [<1, 3>, <5, 7>, <8, 9>]
> ```

<!--more-->
Untuk menyelesaikan soal tersebut, kita lihat apakah soal tersebut dapat dijadikan subsoal yang lebih kecil:
- Misalkan kegiatan pertama yang kita ikuti adalah kegiatan ke-$$x$$.
- Kegiatan selanjutnya yang diikuti haruslah memiliki waktu awal $$\geq a_x.end$$.
- Lebih jauh lagi, ternyata kita mendapat persoalan yang serupa, hanya saja ukurannya lebih kecil.
- Dengan kata lain, kita memperoleh sub-persoalan.

Untuk setiap sub-persoalan, kita harus memilih sebuah Greedy Choice. Pada soal ini, setidaknya terdapat 3 Greedy choice:
- Memilih aktivitas dengan waktu mulai paling awal.

  pilihan ini tidak tepat, karena bisa jadi ada aktivitas yang mulai lebih awal, tetapi memiliki durasi yang sangat panjang sehingga menyita waktu.
- Memilih aktivitas dengan durasi paling singkat.

  pilihan ini juga tidak tepat. Bisa jadi aktivitas dengan durasi paling singkat ini memotong dua aktivitas lain yang sebenarnya dapat kita ikuti.
- Memilih aktivitas dengan waktu akhir paling awal.

  Dengan memilih aktivitas yang selesai lebih awal, kita mempunyai sisa waktu lebih banyak untuk aktivitas lainnya.


## Tautan Pendalaman Materi:
- [Materi Greedy TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/54/lessons/22/)

## Rekomandasi Soal-soal latihan:
- [TLX: Rak Buku](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/54/problems/240/) 
	<details>
	<summary>[Solusi]</summary>
	Lakukan Greedy Choice dengan memilih bebek yang paling tinggi terlebih dahulu
	</details>
