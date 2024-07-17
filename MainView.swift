import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            MapView()
                .tabItem { Label("World", systemImage: "globe") }
            
            BRZView()
                .tabItem { Label("BRZ", systemImage: "globe.americas") }
            
            USAView()
                    .tabItem { Label ("USA", systemImage: "globe.americas") }
            
            AUSView()
                    .tabItem { Label ("AUS", systemImage: "globe.asia.australia") }

        }
    }
}

#Preview {
    MainView()
}
