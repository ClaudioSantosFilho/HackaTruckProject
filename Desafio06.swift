import SwiftUI

struct Desafio06: View {
    @State public  var name: String = ""
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(.blue)
                .frame(width: 400,height: 150)
                .
            
            VStack{
                
                Rectangle()
                    .fill(.white)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                
                Image("Tesla_Model_S_(28898945604)")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 10, height: 100)
                
                TextField("Your name", text: ($name))
                
            }
            
            Spacer()
        }
        
    }
}

#Preview {
    Desafio06()
}
