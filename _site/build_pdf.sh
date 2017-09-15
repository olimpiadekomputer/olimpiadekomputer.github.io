pandoc _site/algoritma/printable.html -f html+tex_math_dollars+tex_math_single_backslash -o print.tex -o print.pdf --toc \
-V author:"William Gozali, Alham Fikri Aji" \
-V institute:"Ikatan Alumni Tim Olimpiade Komputer Indonesia" \
-V title:"Kurikulum OSN Informatika 2017" \
-V header:"IA-TOKI 2017" \
-V abstract:"Dokumen ini merupakan panduan persiapan Olimpiade Sains Nasional bidang informatika yang dirancang mengikuti kurikulum resmi 2017. Dokumen ini terfokus pada <lho>, disertai penjelasan singkat untuk tiap bab beserta referensi lanjutan, contoh soal, serta pembahasan."
