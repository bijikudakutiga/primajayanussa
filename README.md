# Landing page Jaya Prima Nussa
Situs statis (tanpa build). Struktur: index.html, config.js, assets/, supabase.sql

## Deploy
1. Buat repo GitHub, push seluruh isi folder ini.
2. Cloudflare Dashboard > Workers & Pages > Create > Pages > Connect to Git. Build command kosong, output directory `/`.
3. Supabase: jalankan supabase.sql, isi URL dan anon key di config.js, commit.
4. Setelah domain dibeli: Pages > Custom domains > tambah jayaprimanussa.com dan www.
