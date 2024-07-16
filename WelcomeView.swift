import SwiftUI

struct WelcomeView: View {
    @State  var Nome2: String = ""
    @State  var Sobrenome2: String = ""
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.darkBlue)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text("Moledo 02")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Rectangle()
                    .fill(.betterPink)
                    .frame(width: 350,height: 350)
                    .cornerRadius(5)
                
                Spacer()
                
            }
            
            VStack{
                
                Text("Bem-vindo, \(Nome2) \(Sobrenome2)")
                    .padding()
                
                NavigationLink(destination: ByeView(Nome3: Nome2, Sobrenome3: Sobrenome2)){
                    
                    Text("Acessar tela")
                        .foregroundStyle(.blue)
                        .padding()
                    
                }
                
            }
        }
    }
}

#Preview {
    WelcomeView()
}
