-- Jalankan di Supabase > SQL Editor
create table public.inquiries (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  nama text not null check (char_length(nama) <= 120),
  perusahaan text check (char_length(perusahaan) <= 160),
  kontak text not null check (char_length(kontak) <= 160),
  jenis text,
  pesan text check (char_length(pesan) <= 2000)
);
alter table public.inquiries enable row level security;
-- Pengunjung hanya boleh MENGIRIM, tidak bisa membaca data orang lain.
create policy "public can insert" on public.inquiries for insert to anon with check (true);
-- Data dibaca lewat dashboard Supabase (service role), bukan dari website.
