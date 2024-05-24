import SwiftUI
struct RevealView: View {
    @EnvironmentObject var model: Model
    @State var generatedStory = ""
    var body: some View{
        VStack{
            Text("Revealed Words:")
                .font(.headline)
                .padding()
            Text("Adjective:\(model.adjective)")
                .foregroundColor(.blue)
            Text("Noun:\(model.noun)")
                .foregroundColor(.red)
            Text("Verb: \(model.verb)")
                .foregroundColor(.green)
            
            Spacer()
            
            Button ("Generate Story", action:{
                
            })
            .onAppear(){
                generatedStory = model.generateStory()
                ColorWordPlay()
                print("Test")
                    
            }
            .padding()
            
        
        }
        Text(generatedStory)
            .padding()
        
    }
    func ColorWordPlay() {
        let wordPlay = model.generateStory()
       
        var attributedWordPlay = AttributedString(wordPlay)
        
        guard let rangeOfNoun = attributedWordPlay.range(of: model.noun) else {return}
        
        guard let rangeOfAdjective = attributedWordPlay.range(of: model.adjective) else {return}
        
        guard let rangeOfVerb = attributedWordPlay.range(of: model.verb) else {return}
        
        attributedWordPlay[rangeOfNoun].foregroundColor = .green
        
        attributedWordPlay[rangeOfVerb].foregroundColor = .green
        
        attributedWordPlay[rangeOfAdjective].foregroundColor = .green
        
    }
}

