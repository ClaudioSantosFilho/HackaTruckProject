import SwiftUI
import MapKit

struct AUSView: View {
    @State public var resumeAUS = false

    @State private var positionAUS = MapCameraPosition.region(MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: -35.311788, longitude: 149.126128),
    span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 0)
    ))
    
    var body: some View {
        ZStack{
            
            Map(position: $positionAUS)
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
                
                Text("Australia")
                    .font(.subheadline)
                
                Spacer()
                
            }
            .padding()
            
            VStack{
                
                Button("Australia"){
                    resumeAUS = true
                }
                .sheet(isPresented: $resumeAUS, content: {
                    Text("Australia")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Image("AUS")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350)
                    
                    ScrollView{
                        Text("  A Austrália é um país localizado na Oceania, compreendendo uma área continental de aproximadamente 7,7 milhões de quilômetros quadrados. É uma democracia parlamentar, onde o chefe de estado é o monarca britânico, representado por um governador-geral, enquanto o chefe de governo é o primeiro-ministro.")
                            .font(.subheadline)
                            
                        
                        Text("  A história da Austrália inclui sua colonização inicial pelos britânicos em 1788 como uma colônia penal. Ao longo dos séculos, a Austrália passou por um processo de desenvolvimento econômico significativo, especialmente no setor de recursos naturais. A nação também é conhecida por sua rica biodiversidade e por ser lar de muitas espécies únicas de flora e fauna, como os cangurus e coalas.")
                            .font(.subheadline)
                        
                        Text("  Curiosidades sobre a Austrália incluem a Grande Barreira de Coral, uma das maravilhas naturais do mundo, o fato de ter a maior população de camelos selvagens do mundo, e a sua paixão por esportes como o críquete e o rugby. Além disso, a Austrália é reconhecida por sua qualidade de vida elevada e multiculturalismo, refletido em sua diversidade étnica e cultural.")
                            .font(.subheadline)
                                        
                    }
                    .padding()
                })
            }
            
        }
    }
}

#Preview {
    AUSView()
}
