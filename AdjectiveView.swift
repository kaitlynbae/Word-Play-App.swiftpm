import SwiftUI
struct AdjectiveView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack{
            TextField("Description", text: $model.adjective)  
                .foregroundColor(.blue)
            NavigationLink("Click here to view story"){
                RevealView()
                
                
                
                
            }    
        }
    }
}
