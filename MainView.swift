import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView{
            
            PinkView()
                .tabItem { Label("Pink", systemImage: "paintpalette") }
            
            BlueView()
                    .tabItem { Label ("Blue", systemImage: "paintbrush.pointed") }
            
            GrayView()
                    .tabItem { Label ("Gray", systemImage: "paintpalette") }
            
            ListView()
                    .tabItem { Label ("List", systemImage: "hand.point.up.left.and.text") }
            
        }
    }
}

#Preview {
    MainView()
}
