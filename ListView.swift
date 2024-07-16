import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack{
            
            VStack{
                List{
                    
                    HStack{
                        Text("Pink")
                        Spacer()
                        Image(systemName: "paintbrush")
                        
                    }
                    
                    HStack{
                        Text("Blue")
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                        
                        
                    }
                    
                    HStack{
                        Text("Gray")
                        Spacer()
                        Image(systemName: "paintpalette")
                        
                    }
                }
                .navigationTitle("List")
            }
        }
    }
}

#Preview {
    ListView()
}
