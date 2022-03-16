<p align="center">
    <img src="https://img.shields.io/static/v1?logo=linux&label=Language&message=bash&color=yellow">
     <img src="https://img.shields.io/static/v1?logo=json&label=Author&message=Polygon&color=green"><br>
     <img src="https://img.shields.io/static/v1?logo=github&label=maintance&message=No&color=yellow">
      <img src="https://img.shields.io/static/v1?logo=apache&label=open%20source&message=yes&color=yellow"><br>
       <img src="https://img.shields.io/static/v1?logo=json&label=tools&message=program_loop&color=gray">
</p>

<br>

ini adalah sebuah program loop simple di bash

untuk cara penginstallan nya

```bash
apt update
apt full-upgrade
apt install git
git submodule add https://github.com/Bayu12345677/loop_triangle
cd loop_triangle
```

- `cara menggunakan nya`
```php
$ # buka dulu text editor nya
$ # jika sudah kalian bisa mengubah output nya entah menjadi angka maupun menjadi symbol dan karakter
$
$ bash main.sh
```

<code><a href="https://github.com/Bayu12345677/loop_triangle/blob/master/img/Screenshot_20220316-183739~2.png">result</a></code>
<img src="https://github.com/Bayu12345677/loop_triangle/blob/master/img/Screenshot_20220316-183739~2.png">

- `simple usage`
```bash
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
		declare symbol="*"; # karakter nya -> anda bisa mengganti nya sesuai ke inginan anda
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

```
## or
```bash
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
```

> tanks to MultiTeam and helixs-crew

