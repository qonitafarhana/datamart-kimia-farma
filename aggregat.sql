CREATE TABLE aggregat AS(SELECT
	id,
  	id_invoice,
   	tanggal,
   	id_customer,
	id_barang,
	jumlah_barang,
	harga,
   	nama,
  	id_cabang_sales,
	cabang_sales,
	id_distributor, 
	grup,
	nama_barang,
	kemasan,
	nama_tipe,
	kode_brand,
	brand,
   	SUM(jumlah_barang * harga) AS total_sales
   FROM base
   GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17
);