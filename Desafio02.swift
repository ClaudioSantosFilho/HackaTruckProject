import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack{
            Image("Tesla_Model_S_(28898945604)")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(20)
            
            Spacer()
            Spacer()
            
            VStack{
                Text("Claudio")
                    .foregroundColor(.red)
                Text("19 anos")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Bonito")
                    .foregroundColor(.yellow)
                
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    
    SwiftUIView()
}
