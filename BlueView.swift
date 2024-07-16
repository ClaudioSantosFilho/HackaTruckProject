import SwiftUI

struct BlueView: View {
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.blue)
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                Image(systemName: "paintbrush.pointed")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .foregroundColor(.black)
                
            }
        }
    }
}

#Preview {
    BlueView()
}
