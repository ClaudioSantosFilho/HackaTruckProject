import SwiftUI

struct PinkView: View {
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.pink)
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                Image(systemName: "paintbrush")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .foregroundColor(.black)
                
            }
        }
    }
}

#Preview {
    PinkView()
}
