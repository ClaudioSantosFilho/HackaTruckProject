import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .fill(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .padding(20)
                
            Spacer()
                
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                    .padding(20)
            }
            
            Spacer()
            
            HStack{
                Rectangle()
                    .fill(.green)
                    .frame(width:100, height: 100)
                    .padding(20)
                
                Spacer()
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .padding(20)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}

