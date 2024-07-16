import SwiftUI

struct ByeView: View {
    @State  var Nome3: String = ""
    @State  var Sobrenome3: String = ""
    
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
                
                Text("Volte logo, \(Nome3)")
            }
        }
    }
}

#Preview {
    ByeView()
}
