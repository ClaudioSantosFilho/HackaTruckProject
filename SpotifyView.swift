import SwiftUI

struct Som: Identifiable{
    var id: Int
    var name: String
    var artista: String
    var capa: String
}

struct Recomendacoes: Identifiable{
    var id: Int
    var name: String
    var recomendacao: String
    
}

var ArrayRecomendacoes = [
    
    Recomendacoes(id: 1, name: "Never Let Me Go", recomendacao: "Re01"),
    Recomendacoes(id: 2, name: "Heaven", recomendacao: "Re03"),
    Recomendacoes(id: 3, name: "Jungle", recomendacao: "Re02"),
    Recomendacoes(id: 4, name: "Hear Me Now", recomendacao: "Re04"),
    Recomendacoes(id: 5, name: "Monster", recomendacao: "Re05")
    
]

var ArraySom = [
    
    Som(id: 1, name: "Carry on Wayward Son", artista: "Kansas", capa: "capa01"),
    Som(id: 2, name: "Another Brick in the Wall, Pt. 2", artista: "Pink Floyd", capa: "cap02"),
    Som(id: 3, name: "Now and Then", artista: "The Beatles", capa: "cap03"),
    Som(id: 4, name: "Waiting For Love", artista: "Avicii", capa: "capa04"),
    Som(id: 5, name: "Moskau", artista: "Da Tweekaz, Harrus & Ford", capa: "capa05"),
    Som(id: 6, name: "Another Night", artista: "Real McCoy", capa: "capa06"),
    Som(id: 7, name: "I`m Good (Blue)", artista: "Dav8d Guetta, Bebe Rexha", capa: "capa07"),
    Som(id: 8, name: "Fuck You", artista: "Lily Allen", capa: "capa08"),
    Som(id: 9, name: "Gangnam Style", artista: "PSY", capa: "capa09"),
    Som(id: 10, name: "Viva La Vida", artista: "Coldplay", capa: "capa10")
    
]



struct SpotifyView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Rectangle()
                    .fill(.black.gradient)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack{
                    
                    Image("bob.pnj")
                        .resizable()
                        .frame(width: 200,height: 200)
                    
                    HStack{
                        
                        VStack(alignment: .leading){
                            
                            Text("Bob, O Construtor")
                                .foregroundStyle(.white)
                                .font(.title2)
                            
                            HStack{
                                
                                Image("bob.pnj")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                
                                Text("Seu amigão")
                                    .foregroundStyle(.white)
                                    .font(.subheadline)
                                
                                Spacer()
                                
                            }
                            
                        }
                        .padding()
                        
                        Spacer()
                        
                    }
                    
                    VStack{
                        
                        ScrollView{
                            
                            ForEach(ArraySom, id: \.id) { som in
                                
                                HStack{
                                    
                                    Image(som.capa)
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(10)
                                    
                                    VStack(alignment: .leading){
                                        
                                        /*@START_MENU_TOKEN@*/Text(som.name)/*@END_MENU_TOKEN@*/
                                            .font(.headline)
                                            .foregroundColor(.white)
                                        
                                        Text(som.artista)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        
                                    }
                                    .padding()
                                    
                                    Spacer()
                                    
                                }
                                
                            }
                            
                            HStack{
                                ForEach(ArrayRecomendacoes, id: \.id) { rem in
                                    
                                    VStack{
                                        
                                        Image(rem.recomendacao)
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .frame(width: 50, height: 50)
                                            .cornerRadius(10)
                                        
                                        Text(rem.name)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
}

#Preview {
    SpotifyView()
}
