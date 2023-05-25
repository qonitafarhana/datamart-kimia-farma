CREATE TABLE base AS (
SELECT 
	p.id_invoice ||''|| p.id_barang AS id,
	p.id_invoice,
	p.tanggal,
	p.id_customer,
	p.id_barang,
	p.jumlah_barang,
	p.unit,
	p.harga,
	p.mata_uang,
	c.level,
	c.nama,
	c.id_cabang_sales,
	c.cabang_sales,
	c.id_distributor,
	c.grup,
	b.kode_barang,
	b.nama_barang,
	b.kemasan,
	b.nama_tipe,
	b.kode_brand,
	b.brand
FROM penjualan as p
LEFT JOIN pelanggan AS c ON c.id_customer = p.id_customer
LEFT JOIN barang AS b ON b.kode_barang = p.id_barang	
)

ALTER TABLE base ADD PRIMARY KEY(id);

