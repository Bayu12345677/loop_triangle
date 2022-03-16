#!/usr/bin/env bash

# plugins bash moderen
. lib/moduler.sh
# depencies
Bash.import: text_display/colorama text_display/IO.ECHO
Bash.import: util/io.class util/IO.FUNC
Bash.import: util/operator util/IO.SYSTEM.var

@require modules/pack.sh

var bg_info : '\e[1;41;32m'
var bg_note : '\e[1;41;37m'

# ini adalah sebuah program loop sederhana
def: program() {
	global: jumlah = "$@";

	if [[ $jumlah =~ [0-9] ]]; then
		dummy=
	else
		Tulis.strN "${pu} input harus berupa ${bg_note}angka${st}"; exit
	fi

	let a=0; # berfungsi untuk pengatur jumlah dari loop
	let b=0; # mengatur tata letak nya output
	let c=0; # berfungsi sebagai validasi

	while ((a<jumlah)); do
	{
		let b++; # untuk menjumlahkan b dari 0 sampai nilai variable jumlah
		let a++
	}
	for x in {1..1}; do
		declare symbol="$a"; # karakter nya -> anda bisa mengganti nya sesuai ke inginan anda
		declare bytes+="$symbol"; # nah ini di gunakan untuk menyimpan variable tanpa menimpa nya jadi 1 loop bisa di jadikan output 1 dan seterus nya

		Tulis.str "${bytes}\n"; # ini sebagai pencetak nya

		%% ket
		: "
		penjelasan :
					jadi gini kita tau bahwa variable bisa terganti oleh variable baru / di timpa oleh variable baru
					kecuali variable global (declare -g) dia tidak akan bisa di ganti di dalam fungsi
					+= dia tidak akan di timpa tapi akan di jadikan satu dalam satu run nah karena ini loop maka nilai yg lama bisa di gantikan
					dengan nilai baru jadi akan menyimpan nila 12345 dalam satu loop dan akan di gantikan oleh loop kedepan
					123456 nah di dalam variable tersebut akan di cetak ke layar (note : gunkan backslash newline untuk pola tangga nya)
		"
	done;
done
}

# masukan jumlah besar nya segitiga
program 15
