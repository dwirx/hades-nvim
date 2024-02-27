#!/bin/bash

# Fungsi untuk mengunduh repositori menggunakan HTTPS
download_with_https() {
    git clone -b hades-lazy https://github.com/dwirx/hades-nvim.git ~/.config/nvim
}

# Fungsi untuk mengunduh repositori menggunakan SSH
download_with_ssh() {
    git clone -b hades-lazy git@github.com:dwirx/hades-nvim.git ~/.config/nvim
}

# Menampilkan pesan interaktif untuk memilih metode unduhan
choose_download_method() {
    echo "Pilih metode unduhan:"
    echo "1. HTTPS"
    echo "2. SSH"
    read -p "Masukkan nomor pilihan (1/2): " download_method
    case $download_method in
        1) download_with_https;;
        2) download_with_ssh;;
        *) echo "Pilihan tidak valid. Silakan coba lagi."; choose_download_method;;
    esac
}

# Menampilkan pesan interaktif untuk menentukan apakah akan menimpa atau melewati jika direktori sudah ada
choose_overwrite() {
    read -p "Direktori ~/.config/nvim sudah ada. Apakah Anda ingin menimpa? (y/n): " overwrite_choice
    case $overwrite_choice in
        [Yy]* ) choose_download_method;;
        [Nn]* ) echo "Instalasi dibatalkan."; exit;;
        * ) echo "Silakan jawab dengan y atau n."; choose_overwrite;;
    esac
}

# Memeriksa apakah direktori ~/.config/nvim sudah ada
if [ -d ~/.config/nvim ]; then
    choose_overwrite
else
    choose_download_method
fi

echo "Instalasi selesai."

