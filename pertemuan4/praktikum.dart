void tampilkanMahasiswa(List<Map<String, String>>data) {
for (var mahasiswa in data) {
print("Nama: ${mahasiswa["nama"]}");
print("NIM: ${mahasiswa["nim"]}");
print("Prodi: ${mahasiswa["prodi"]}");
print("------------------");
  }
}
Map<String,String>mahasiswa1= {
"nama":"Nuraliza",
"nim":"H0724525",
"prodi":"Pendidikan Teknologi Informasi"
};
Map<String,String>mahasiswa2= {
"nama":"Nuryanti",
"nim":"H0724523",
"prodi":"Pendidikan Teknologi Informasi"
};
Map<String,String>mahasiswa3= {
"nama":"Putri",
"nim":"H0724501",
"prodi":"Pendidikan Teknologi Informasi"
};
List<Map<String, String>>daftarMahasiswa= [
mahasiswa1,
mahasiswa2,
mahasiswa3
];
void main() {
tampilkanMahasiswa(daftarMahasiswa);
}