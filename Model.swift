import SwiftUI
class Model : ObservableObject{
    @Published var noun = ""
    @Published var verb = ""
    @Published var adjective = ""
    
    
//Create reset function 

//Create story inside this class 
    func generateStory() -> String{
        let wordPlayStory = "Today I went to the Zoo. I saw a(n) \(adjective) \(noun) \(verb) in a tree."
        return wordPlayStory
    }
//Story must include: 
    
}
