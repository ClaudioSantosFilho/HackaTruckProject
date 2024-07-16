import SwiftUI

struct NameView: View {
    @State  var Nome: String = ""
    @State  var Sobrenome: String = ""
    
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                
                Rectangle()
                    .fill(.darkBlue)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack{
                    Text("Modelo 01")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(.betterPink)
                        .frame(width: 300,height: 250)
                        .cornerRadius(5)
                    
                    Spacer()
                    
                }
                
                VStack{
                    
                    TextField("Nome: ", text: $Nome)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("Sobrenome: ", text: $Sobrenome)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    NavigationLink(destination: WelcomeView(Nome2: Nome, Sobrenome2: Sobrenome)){
                        
                        Text("Acessar tela")
                            .foregroundStyle(.blue)
                            .padding()
                        
                    }
                }
            }
        }
    }
}

#Preview {
    NameView()
}
