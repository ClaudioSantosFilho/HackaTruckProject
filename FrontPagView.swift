import SwiftUI

struct FrontPagView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                
                Rectangle()
                    .fill(.darkBlue)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack{
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 150,height: 125)
                        .padding()
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(.betterPink)
                        .frame(width: 150,height: 100)
                        .cornerRadius(5)
                    
                    Rectangle()
                        .fill(.betterPink)
                        .frame(width: 150,height: 100)
                        .cornerRadius(5)
                    
                    Rectangle()
                        .fill(.betterPink)
                        .frame(width: 150,height: 100)
                        .cornerRadius(5)
                    
                    Spacer()
                    Spacer()
                    
                }
                
                VStack{
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    NavigationLink(destination: FrontPagView()){
                        Text("Tela Inicial")
                            .padding()
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: NameView()){
                        Text("Digite seu nome")
                            .padding()
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: WelcomeView()){
                        Text("modo 1")
                            .padding()
                        
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                }
            }
        }
    }
}

#Preview {
    FrontPagView()
}
