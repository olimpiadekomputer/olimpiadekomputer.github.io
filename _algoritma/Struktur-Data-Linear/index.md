---
layout: page
title: Struktur Data Linear
order: 7
examples:
 - title: "OSN 2013: Lipat Kertas"
   url: https://training.ia-toki.org/problemsets/42/problems/212/
   hint: Sebuah lekukan dapat direpresentasikan sebagai interval dengan ujung-ujungnya adalah posisi kedua sisi warna pada tumpukan dalam lipatan kertas tersebut. Sebagai contoh lekukan ke-1 (sisi warna 1 dan sisi warna 2) memiliki representasi interval [1,8], dan lekukan ke-2 (sisi warna 2 dan sisi warna 3) memiliki rerpresentasi interval [8,5] atau [5,8]. Dengan begitu, persoalan ini dapat direpresentasikan sebagai soal "bracket matching", atau pencocokan tanda kurung, persis dengan contoh soal di bab ini.
   summary: bla
---
Struktur data linear adalah struktur data yang dibangun pada array. Dalam OSN, terdapat 2 struktur data linear yang masuk dalam kurikulum:
### Queue
Queue adalah struktur data dimana kita dapat memasukkan elemen, dan mengeluarkan elemen sesuai dengan urutan masukknya. Pada Queue, elemen yang pertama dikeluarkan adalah elemen yang pertama kali masuk, mirip seperti antrian dalam dunia nyata.

### Stack
Pada Stack, kita dapat memasukkan elemen dan mengeluarkan elemen yang terakhir kali dimasukkan.


Contoh soal:

> Anda diberikan sebuah string yang terdiri dari kurung "(", ")", dan kurung siku "[", "]".
> Tentukan apakah string tersebut merupakan barisan kurung yang valid. Barisan kurung yang valid adalah setiap kurung buka memiliki pasangan kurung tutup dengan urutan yang benar.
> 
> ```
> Contoh 1  : "([])"
> Jawaban 1 : VALID
>
> Contoh 2  : "([)]"
> Jawaban 2 : TIDAK VALID
>
> Contoh 3  : "(())[][]"
> Jawaban 3 : VALID
>
> Contoh 4  : "]["
> Jawaban 4 : TIDAK VALID
> ```
<!--more-->

Kita dapat memanfaatkan struktur data Stack. Siapkanlah sebuah stack kosong. Lakukan perulangan terhadap string S. Setiap kali kita menemukan kurung buka "(" ataupun "]", masukkan ke dalam stack. Setiap kali kita menemukan kurung tutup, lihat elemen teratas pada stack dan pastikan pasangan kurungnya tepat.

#### Tautan Pendalaman Materi:
- [Materi Struktur Data Dasar TLX Training Gate](https://training.ia-toki.org/training/curriculums/1/courses/11/chapters/56/lessons/25/)

#### Rekomandasi Soal-soal latihan:
{% for example in page.examples %}
- [{{example.title}}]({{ example.url }})
	<details>
	<summary>[Solusi]</summary>
	{{ example.hint }}
	</details>

{% endfor %}


