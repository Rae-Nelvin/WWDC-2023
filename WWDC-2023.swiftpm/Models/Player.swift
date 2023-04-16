import SwiftUI

struct Player: Identifiable {
    let id = UUID()
    var name: String?
    var health: Int = 5
}
