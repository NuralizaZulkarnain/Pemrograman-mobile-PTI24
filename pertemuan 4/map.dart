void main() {
Map<String,String>mahasiswa= {
"nama":"Icha",
"nim":"12345",
"prodi":"Pendidikan Teknologi Informasi" ,
"semester":"3"
  };
print(mahasiswa["nama"]);

mahasiswa["semester"]="4";
print(mahasiswa);

mahasiswa.forEach((key,value) {
print("$key:$value");
  });
}