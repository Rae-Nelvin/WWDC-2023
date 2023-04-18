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
        Way(amount: 4, text: "Cook 4 cups of rice"),
        Way(amount: 2, text: "Wash and cut 2 cups of carrots"),
        Way(amount: 1, text: "Wash and cut 1 onion"),
        Way(amount: 1, text: "Wash and cut 1 clove of garlic"),
        Way(amount: 1, text: "Wash and cut 1 cup of ginger"),
        Way(amount: 2, text: "Pour 2 tablespoons of vegetable oil into a large frying pan"),
        Way(amount: 3, text: "Cook vegetables in the frying pan for 3 minutes"),
        Way(amount: 0.25, text: "Put 1/4 kg of cooked chicken in the frying pan"),
        Way(amount: 2, text: "Pour 2 tablespoons of sesame oil into the frying pan"),
        Way(amount: 3, text: "Add 3 eggs into the frying pan"),
        Way(amount: 4, text: "Pour 4 cups of rice into the frying pan"),
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
        Way(amount: 2, text: "Heat 2 tablespoons of oil in a skillet"),
        Way(amount: 3, text: "Fry potatoes in hot oil until lightly browned for 3 minutes"),
        Way(amount: 2, text: "Add remaining 2 tablespoons of oil to the skillet"),
        Way(amount: 3, text: "Add onions, garlic, and fresh ginger"),
        Way(amount: 7, text: "Add tomatoes, salt, cumin, chili powder, pepper, and turmeric"),
        Way(amount: 5, text: "Cook and stir constantly for 5 minutes"),
        Way(amount: 4, text: "Stir in yogurt, mint, ground cardamom, and cinnamon stick"),
        Way(amount: 1, text: "Add chicken and stir well to coat"),
        Way(amount: 35, text: "Cover and cook over very low heat until chicken is tender, 35 minutes"),
        Way(amount: 30, text: "Wash rice well and drain in a colander for at least 30 minutes"),
        Way(amount: 1, text: "Heat oil in a large skillet"),
        Way(amount: 1, text: "Add onion and cook and stir until golden"),
        Way(amount: 5, text: "TAdd cardamom pods, cloves, cinnamon stick, ground ginger, and saffron"),
        Way(amount: 2, text: "Heat stock and salt in a medium pot until hot"),
        Way(amount: 1, text: "Pour over rice and stir well"),
        Way(amount: 2, text: "Add chicken mixture and potatoes and stir gently to combine"),
        Way(amount: 1, text: "Bring to a boil"),
        Way(amount: 20, text: "Reduce heat to very low, cover with a tight-fitting lid, and steam for 20 minutes without lifting the lid or stirring")], image: "Chicken-Biryani")]
}
