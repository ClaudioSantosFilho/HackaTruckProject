import SwiftUI

struct Desafio03: View {
    var body: some View {
        VStack{ //comeco
            HStack{ //username, botao de atualizacao, varias barras
                Text("Claudio Santos")
                    .padding()
                Spacer()
                Spacer()
                Image(systemName: "light.min")
                Image(systemName: "blinds.horizontal.closed")
                    .padding()
            }
            
            Divider()
            
            HStack{ //Foto
                Image("Tesla_Model_S_(28898945604)")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(20)
                
                VStack{ //Editar perfil no final
                    
                    HStack{ //Postagens, Seguidores, Seguindo
                        Spacer()
                        Text("12")
                        Spacer()
                        Text("126")
                        Spacer()
                        Text("314")
                        Spacer()
                        
                    }
                    
                    HStack{ //Postagens, Seguidores, Seguindo
                        Spacer()
                        Text("publicaçøes")
                            .font(.system(.footnote))
                        Spacer()
                        Text("seguidores")
                            .font(.system(.footnote))
                        
                        Spacer()
                        Text("seguindo")
                            .font(.system(.footnote))
                        
                        Spacer()
                        
                    }
                    
                    Text("Editar Perfil")
                        .frame(width: 230,height: 30)
                        .background(.gray)
                }
                
                
            }
            HStack{
                VStack(alignment: .leading){ // Nome completo, bio
                    Text("Claudio Santos")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Text("Estudante de Sistemas, do segundo periodo.")
                        .font(.subheadline)
                    
                }
                Spacer()
                
            }.padding()
            
            Divider()
            
            HStack{
                Spacer()
                Image(systemName: "rectangle.split.3x3.fill")
                Spacer()
                Image(systemName: "play.square")
                Spacer()
                Image(systemName: "macpro.gen3")
                Spacer()
            }
            
            Divider()
            
            VStack{
                
                HStack{//1
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                    
                }
                
                HStack{//2
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
                
                HStack{//2
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
                
            }
            Spacer()
            
        }
    }
}

#Preview {
    Desafio03()
}
