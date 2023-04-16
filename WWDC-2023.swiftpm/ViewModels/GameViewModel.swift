import SwiftUI

final class GameViewModel: ObservableObject {
    @Published var currentPage: String = "StartView"
    @Published var player: Player = Player()
    @Published var food: Food
    @Published var isWin: Bool?
    @Published var isPlay: Bool = true
    @Published var chosenOperator: String = "+"
    let operators: [String]
    private var counter: Int = 0
    
    init() {
        self.operators = ["+", "-", "/", "*"]
        self.food = foodLists.lists[0]
    }
    
    func cook() -> Way {
        return food.ways[counter]
    }
    
    func getOperator() -> String {
        return operators.randomElement() ?? "+"
    }
    
    func checkAnswer(answer1: Float, answer2: Float, amount: Float) {
        if (calculateResult(answer1: answer1, answer2: answer2, amount: amount) == true && counter < food.ways.count) {
            counter += 1
            checkWin()
            chosenOperator = getOperator()
            return
        }
        player.health -= 1
        checkWin()
    }
    
    private func calculateResult(answer1: Float, answer2: Float, amount: Float) -> Bool {
        switch chosenOperator {
        case "+":
            return (answer1 + answer2) == amount
        case "-":
            return (answer1 - answer2) == amount
        case "/":
            if (answer1 != 0 && answer2 != 0) {
                return (answer1 / answer2) == amount
            } else {
                return false
            }
        case "*":
            return (answer1 * answer2) == amount
        default:
            return false
        }
    }
    
    private func checkHealth() -> Bool {
        if player.health == 0 {
            return false
        }
        return true
    }
    
    private func checkWin() {
        if checkHealth() == false || (foodLists.lists.count == counter && checkHealth() == false) {
            isPlay = false
            isWin = false
        }
        
        if foodLists.lists.count == counter {
            isPlay = true
            isWin = true
        }
    }
}
