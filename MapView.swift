import SwiftUI

struct MapView: View {
    var body: some View {
            
            ZStack{
                
                Rectangle()
                    .fill(.cyan.gradient)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack{
                    
                    Image(systemName: "globe.americas.fill")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    
                    Text("World Map")
                    
                }
                
            }
        
    }
    
}

#Preview {
    MapView()
}
