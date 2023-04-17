import SwiftUI

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let origin: String
    let ingredients: [Ingredient]
    let ways: [Way]
    let image: String
}

struct foodLists {
    static let lists = [Food(name: "Indonesian Nasi Goreng", type: "Main Course", origin: "Chinese", ingredients: [
        Ingredient(text: "Nasi Putih"),
        Ingredient(text: "Wortel"),
        Ingredient(text: "Bawang Bombay"),
        Ingredient(text: "Bawang Putih"),
        Ingredient(text: "Jahe Segar"),
        Ingredient(text: "Tauge"),
        Ingredient(text: "Telur"),
        Ingredient(text: "Lada Hitam"),
        Ingredient(text: "Garam"),
        Ingredient(text: "Kecap"),
        Ingredient(text: "Minyak Sayur"),
        Ingredient(text: "Minyak Wijen"),
        Ingredient(text: "Daun Bawang"),
        Ingredient(text: "Ayam")
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
        Way(amount: 3, text: "Tambahkan 3 butir telur ke dalam penggorengan"),
        Way(amount: 4, text: "Masukkan 4 cangkir nasi putih ke dalam penggorengan"),
    ], image: "Nasi-Goreng"),
    Food(name: "Chicken Biryani", type: "Main Course", origin: "India", ingredients: [
        Ingredient(text: "Vegetable Oil"),
        Ingredient(text: "Potatoes"),
        Ingredient(text: "Onions"),
        Ingredient(text: "Cloves Garlic"),
        Ingredient(text: "Fresh Ginger Root"),
        Ingredient(text: "Salt"),
        Ingredient(text: "Ground Cumin"),
        Ingredient(text: "Chili Powder"),
        Ingredient(text: "Black Pepper"),
        Ingredient(text: "Tumeric"),
        Ingredient(text: "Plain Yogurt"),
        Ingredient(text: "Fresh Mint Leaves"),
        Ingredient(text: "Cardamon"),
        Ingredient(text: "Cinnamon Stick"),
        Ingredient(text: "Basmati Rice"),
        Ingredient(text: "Cloves"),
        Ingredient(text: "Powdered Saffron"),
        Ingredient(text: "Chicken Stock"),
        Ingredient(text: "Boneless and Skinless Chicken Pieces")],
         ways: [
        Way(amount: 2, text: "Panaskan 2 sendok makan minyak ke wajan besar"),
        Way(amount: 3, text: "Goreng kentang ke dalam minyak panas sampai kecoklatan selama 3 menit"),
        Way(amount: 2, text: "Masukkan 2 sendok makan minyak sisa ke dalam wajan"),
        Way(amount: 3, text: "Masukkan bawang bombay, bawang putih dan jahe segar"),
        Way(amount: 7, text: "Masukkan tomat, garam, cumin, bubuk cabe, lada dan tumeric"),
        Way(amount: 5, text: "Masak dan campurkan selama 5 menit"),
        Way(amount: 4, text: "Campurkan juga yogurt, daun mint, ground cardamon dan batang kayu manis"),
        Way(amount: 1, text: "Masukkan ayam dan masak hingga ayam terbumbui sempurna"),
        Way(amount: 35, text: "Tutup wajan dan masak dalam api panas kecil selama 35 menit hingga ayam menjadi lunak"),
        Way(amount: 30, text: "Cuci beras dan keringkan secara berulang selama setidaknya 30 menit"),
        Way(amount: 1, text: "Panaskan minyak ke dalam wajan besar"),
        Way(amount: 1, text: "Masukkan bawang bombay dan masak hingga keemasan"),
        Way(amount: 5, text: "Tambahkan cardamon pods, cengkih, batang kayu manis, jahe dan saffron, dan masak hingga nasi terbumbui"),
        Way(amount: 2, text: "Panaskan air serta masukkan garam ke dalam sebuah panci"),
        Way(amount: 1, text: "Masukkan nasi ke dalam panci dan campur"),
        Way(amount: 2, text: "Masukkan olahan ayam dan tomat"),
        Way(amount: 1, text: "Masukkan ke dalam panci"),
        Way(amount: 20, text: "Kecilkan panas api, tutup dengan penutup panci yang rapat dan kukus selama 20 menit")], image: "Chicken-Biryani")]
}
