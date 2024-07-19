import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State public var animeButton = false
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(.black.gradient)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                VStack{
                    ZStack{
                        Rectangle()
                            .fill(.gray.gradient)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: .infinity,height: 150)
                        
                        Spacer()
                        
                        
                        
                        HStack{
                            Spacer()
                            
                            Image(systemName: "play.circle.fill")
                                .resizable()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                                .padding()
                            
                            Text("Your favorite anime here!!!")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .padding()
                            
                            Spacer()
                        }
                    }
                    
                }
                
                ScrollView{
                    
                    VStack{
                        
                        ForEach(viewModel.chars, id : \.mal_id){ anime in
                            
                            VStack{
                                
                                HStack{
                                    
                                    Text(anime.title != nil ? "\(anime.title!)" : "")
                                        .foregroundColor(.white)
                                    
                                    Spacer()
                                    
                                }.padding(.horizontal)
                                
                                
                                
                            }
                        }
                    }
                    
                }.onAppear(){
                    viewModel.fetch()
                }
            }
        }
        
    }
    
}
#Preview {
    ContentView()
}
