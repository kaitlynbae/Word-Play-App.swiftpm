import SwiftUI
struct VerbView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack{
            TextField("Action", text: $model.verb)  
                .foregroundColor(.green)
            NavigationLink("Enter an Adjective Next"){
                AdjectiveView()
                
                
            }

        }    
    }
}

