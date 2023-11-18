
import DosenControllers from "./Controllers/dosenControllers.js";
import JurusanControllers from "./Controllers/jurusanControllers.js";
import KontrakControllers from "./Controllers/kontrakControllers.js";
import { MahasiswaControllers }from "./Controllers/mahasiswaControllers.js";
import MatakuliahController from "./Controllers/matakuliahController.js";
import { rl } from "./Models/connect.js";


export function line() {
    let line = ''
    for (let i = 0; i < 100; i++) line += '='
    return console.log(line)
};

export function home() {
    line()

    console.log(`
    Silakan pilih opsi dibawah ini:
    [1] Mahasiswa
    [2] Jurusan
    [3] Dosen
    [4] Mata Kuliah
    [5] Kontrak
    [6] Keluar`)

    line()
    rl.question('Masukkan salah satu nomor dari opsi di atas:', (index) => {
        switch (index) {
            case '1':
                MahasiswaControllers.option()
                break;
            case '2':
                JurusanControllers.option()
                break;
            case '3':
                DosenControllers.option()
                break;
            case '4':
                MatakuliahController.option()
                break;
            case '5':
                KontrakControllers.option()
                break;
            case '6':
                DosenControllers.option()
                break;
        }
    })

}
home() 