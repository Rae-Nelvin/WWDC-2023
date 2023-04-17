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
        Way(amount: 2, text: "Heat 2 tablespoons of oil in a large skillet"),
        Way(amount: 3, text: "Fry potates in hot oil until lightly browned for 3 minutes"),
        Way(amount: 2, text: "Add remaining 2 tablespoons of oil to the skillet"),
        Way(amount: 3, text: "Add onions, garlic and fresh ginger"),
        Way(amount: 7, text: "Add tomatoes, salt, cumin, chili powder, pepper and tumeric"),
        Way(amount: 5, text: "Cook and stir constantly for 5 minutes"),
        Way(amount: 4, text: "Stir in yogurt, mint, ground cardamon and cinnamon stick"),
        Way(amount: 1, text: "Add chicken and stir to well coat"),
        Way(amount: 35, text: "Cover and cook over very low heat until chicken is tender, 35 minutes"),
        Way(amount: 30, text: "Wash rice well and drain it for at least 30 minutes"),
        Way(amount: 1, text: "Heat oil in a large skillet"),
        Way(amount: 1, text: "Add onion, cook and stir until golden"),
        Way(amount: 5, text: "Add cardamon pods, cloves, cinnamon stick, ground ginger and saffron and stir until the rice is coated"),
        Way(amount: 2, text: "Heat stock and salt in a medium pot until hot"),
        Way(amount: 1, text: "Pour over the rice and stir well"),
        Way(amount: 2, text: "Add chicken mixture and tomatoes"),
        Way(amount: 1, text: "Bring to a boil"),
        Way(amount: 20, text: "Reduce heat to very low, cover with a tight-fitting lid and steam for about 20 minutes without lifting the lid")], image: "Chicken-Biryani")]
}
