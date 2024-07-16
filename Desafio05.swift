import SwiftUI

struct Desafio_05: View {
    @State public var pesoStr: String = ""
    @State public var alturaStr: String = ""
    @State public var resultadoIMC: String = ""
    @State public var statusIMC: String = ""
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.normal)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text("Calculadora de IMC")
                    .font(.title)
                    .padding()
                
                TextField("Digite seu peso (kg):", text: $pesoStr)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .padding()
                
                TextField("Digite sua altura (m):", text: $alturaStr)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .padding()
                
                Button("Calcular"){
                    guard let peso = Double(pesoStr), let altura = Double(alturaStr), altura > 0 else {
                        return
                    }
                    
                    let imc = peso / (altura * altura)
                    resultadoIMC = String(format: "%.2f", imc)
                    
                    if imc <= 18.5 {
                        statusIMC = "Baixo peso"
                    } else if imc <= 24.99 {
                        statusIMC = "Normal"
                    } else if imc <= 29.99 {
                        statusIMC = "Sobrepeso"
                    } else if imc > 30{
                        statusIMC = "Obesidade"
                    } else {
                        statusIMC = "Erro"
                    }
                }
                .padding()
                .background(blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Spacer()
                
                VStack {
                    Text("Resultado do IMC:")
                        .font(.headline)
                        .padding(.top)
                    
                    Text(resultadoIMC)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding()
                    
                    Text(statusIMC)
                        .font(.headline)
                        .padding(.bottom)
                }
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 100 ,height: 180)
                
            }
        }
    }
}

#Preview {
    Desafio_05()
}
