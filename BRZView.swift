import SwiftUI
import MapKit

struct BRZView: View {
    @State public var resumeBRZ = false
    
    @State private var positionBRZ = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -15.789207, longitude: -47.885727),
        span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 0)
    ))
    
    var body: some View {
        
        ZStack{
            
            Map(position: $positionBRZ)
                .ignoresSafeArea()
            
            VStack{
                
                Rectangle()
                    .fill(.white.opacity(0.70))
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 400, height: 100)
                
                Spacer()
                
            }
            
            VStack{
                
                Text("World Map")
                    .font(.title2)
                
                Text("Brazil")
                    .font(.subheadline)
                
                Spacer()
                
            }
            .padding()
            
            VStack{
                
                Button("BRAZIL"){
                    resumeBRZ = true
                }
                .sheet(isPresented: $resumeBRZ, content: {
                    Text("BRAZIL")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Image("BRZ")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350)
                    
                    ScrollView{
                        Text("  O Brasil é o maior país da América do Sul, com uma extensão territorial de aproximadamente 8,5 milhões de quilômetros quadrados. Possui um sistema político democrático, adotando o presidencialismo como forma de governo desde a Constituição de 1988. Historicamente, o país foi colonizado pelos portugueses em 1500 e tornou-se independente em 1822. Ao longo de sua história, enfrentou períodos de ditadura militar (1964-1985) e experiências democráticas turbulentas.")
                            .font(.subheadline)
                            
                        
                        Text("  Alguns dos principais acontecimentos incluem a Abolição da Escravatura em 1888, a Proclamação da República em 1889 e a industrialização massiva durante meados do século XX. O Brasil é conhecido por sua diversidade cultural e natural, abrigando a maior parte da Floresta Amazônica e uma rica mistura étnica. Curiosidades incluem o carnaval, uma das maiores festas populares do mundo, e o fato de ser o único país na América Latina a ter o português como língua oficial, devido à colonização lusitana.")
                            .font(.subheadline)
                                        
                    }
                    .padding()
                })
            }
            
        }
        
    }
    
}

#Preview {
    BRZView()
}
