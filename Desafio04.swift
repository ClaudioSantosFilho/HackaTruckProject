import SwiftUI

struct Desafio04: View {
    @State private var name: String = ""
    @State public var showingAlert = false
    
    var body: some View {
        ZStack{
            
            Image("0003")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .scaledToFill()
                .opacity(0.3)
            
            VStack{
                
                
                Text("Bem vindo, \(name)")
                    .padding()
                
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 100)
                
                Image("truck")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 100)
                
                Spacer()
                
                Button("Entrar"){
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert){
                    Alert(
                        title: Text("ALERTA!"),
                        message: Text("voce irá iniciar o desafio da aula agora"),
                        dismissButton: .default(Text("Vamos lá"))
                    )
                }
                
            }
            
        }
        
    }
    
}

#Preview {
    
    Desafio04()
    
}
