import SwiftUI

struct GrayView: View {
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.gray)
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                Image(systemName: "paintpalette")
                    .resizable()
                    .frame(width: 250 , height: 250)
                    .foregroundColor(.black)
                
            }
        }
    }
}

#Preview {
    GrayView()
}
