import SwiftUI

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let origin: String
    let ingredients: [Ingredient]
    let ways: [Way]
}

struct foodLists {
    static let lists = [Food(name: "Indonesian Nasi Goreng", type: "Main Course", origin: "Chinese", ingredients: [
        Ingredient(text: "Nasi Putih", image: "nasi-putih"),
        Ingredient(text: "Wortel", image: "wortel"),
        Ingredient(text: "Bawang Bombay", image: "bawang-bombay"),
        Ingredient(text: "Bawang Putih", image: "bawang-putih"),
        Ingredient(text: "Jahe Segar", image: "jahe-segar"),
        Ingredient(text: "Tauge", image: "tauge"),
        Ingredient(text: "Telur", image: "telur"),
        Ingredient(text: "Lada Hitam", image: "lada-hitam"),
        Ingredient(text: "Garam", image: "garam"),
        Ingredient(text: "Kecap", image: "kecap"),
        Ingredient(text: "Minyak Sayur", image: "minyak-sayur"),
        Ingredient(text: "Minyak Wijen", image: "minyak-wijen"),
        Ingredient(text: "Daun Bawang", image: "daun-bawang"),
        Ingredient(text: "Ayam", image: "ayam")
    ], ways: [
        Way(amount: 4, text: "Masak 4 cangkir nasi putih"),
        Way(amount: 2, text: "Cuci dan potong 2 cangkir wortel"),
        Way(amount: 1, text: "Cuci dan potong 1 bawang bombay"),
        Way(amount: 1, text: "Cuci dan potong 1 siung bawang bombay"),
        Way(amount: 1, text: "Cuci dan potong 1 batang jahe"),
        Way(amount: 1, text: "Cuci dan potong 1 cangkir jahe"),
        Way(amount: 2, text: "Tuangkan 2 sendok makan minyak sayur ke dalam penggorengan besar"),
        Way(amount: 3, text: "Masak sayur - sayuran di penggorengan sebanyak 3 menit"),
        Way(amount: 0.25, text: "Masukkan 1/4 kg ayam yang sudah matang ke dalam penggorengan"),
        Way(amount: 2, text: "Masukkan 2 sendok makan minyak wijen ke dalam penggorengan"),
        Way(amount: 3, text: "Tambahkan tiga butir telur ke dalam penggorengan"),
        Way(amount: 4, text: "Masukkan 4 cangkir nasi putih ke dalam penggorengan"),
    ])]
}
