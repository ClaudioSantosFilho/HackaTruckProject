import SwiftUI
import MapKit

struct USAView: View {
    @State public var resumeUSA = false

    
    @State private var positionUSA = MapCameraPosition.region(MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 38.893569, longitude: -77.037536),
    span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 0)
    ))
    
    var body: some View {
        
        ZStack{
            
            Map(position: $positionUSA)
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
                
                Text("United States")
                    .font(.subheadline)
                
                Spacer()
                
            }
            .padding()
            
            VStack{
                
                Button("United States"){
                    resumeUSA = true
                }
                .sheet(isPresented: $resumeUSA, content: {
                    Text("United States")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Image("USA")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350)
                    
                    ScrollView{
                        Text("  Os Estados Unidos são uma república federal localizada na América do Norte, com uma extensão territorial de cerca de 9,8 milhões de quilômetros quadrados. O país adota o sistema político de democracia representativa, com um sistema presidencialista desde a sua fundação em 1776, após a Declaração de Independência.")
                            .font(.subheadline)
                            
                        
                        Text("  Entre os principais acontecimentos históricos estão a Guerra de Independência contra a Grã-Bretanha, a ratificação da Constituição em 1787, a Guerra Civil (1861-1865) que aboliu a escravidão e a expansão territorial que culminou no status de potência global durante o século XX. Os EUA são conhecidos por sua diversidade étnica e cultural, além de serem um centro de inovação e desenvolvimento tecnológico.")
                            .font(.subheadline)
                        
                        Text("  Curiosidades incluem o sistema de governo dividido em três poderes (executivo, legislativo e judiciário), o sistema de colégio eleitoral para a eleição do presidente, e o fato de ser um dos principais protagonistas em assuntos globais, tanto na política quanto na economia e cultura pop.")
                            .font(.subheadline)
                                        
                    }
                    .padding()
                })
            }
            
        }
        
    }
}

#Preview {
    USAView()
}
