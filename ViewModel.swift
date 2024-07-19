import Foundation


class ViewModel: ObservableObject {
    
    @Published var chars: [Anime] = []
    
    func fetch() {
        
        guard let url = URL(string: "https://api.jikan.moe/v4/anime?q=Kaijuu 8-gou&sfw") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            
            do {
                
                let parsed = try JSONDecoder().decode(API.self, from: data)
                
                DispatchQueue.main.async {
                    
                    self?.chars = parsed.data
                }
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
