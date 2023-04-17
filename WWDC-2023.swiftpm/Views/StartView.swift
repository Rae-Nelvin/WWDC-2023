import SwiftUI

struct StartView: View {
    @State private var name: String = ""
    @ObservedObject var gvm: GameViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Kitchen Math")
                    .font(.system(size: 60, weight: .bold, design: .default))
                    .foregroundColor(Color("Red-Custom"))
                    .padding()
                Image("Start-Logo")
                    .resizable()
                    .frame(width: 400, height: 398)
                NameTextField(name: $name)
                    .frame(width: 500)
                ContinueButton(gvm: gvm, name: name)
                    .padding(.top, 20)

                Spacer()
            }
            .onAppear(){
                gvm.isWin = false
                gvm.isPlay = true
                gvm.player = Player()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Yellow-Custom"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NameTextField: View {
    @Binding var name: String
    
    var body: some View {
        HStack {
            TextField("Enter your name", text: $name)
                .font(.system(size: 18))
                .foregroundColor(.black)
        }
        .padding(EdgeInsets(top: 30, leading: 20, bottom: 30, trailing: 20))
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct ContinueButton: View {
    @StateObject var gvm: GameViewModel
    var name: String
    
    var body: some View {
        Button(action: {
            gvm.player.name = name
            gvm.currentPage = "HowToPlayView"
        }, label: {
            Text("Continue")
                .font(.title)
                .foregroundColor(Color.white)
        })
        .padding(EdgeInsets(top: 25, leading: 50, bottom: 25, trailing: 50))
        .background(name.isEmpty ? Color.gray : Color("Red-Custom"))
        .cornerRadius(10)
        .disabled(name.isEmpty)
    }
}
