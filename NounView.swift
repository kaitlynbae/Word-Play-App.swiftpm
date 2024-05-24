import SwiftUI
struct NounView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack{
            TextField("Person,Place, or Thing", text: $model.noun)  
                .foregroundColor(.red)
            NavigationLink("Enter a Verb Next"){
                VerbView()
                
                
            }

        }    
    }
}
