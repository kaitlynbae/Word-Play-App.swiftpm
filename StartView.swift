import SwiftUI

struct StartView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        VStack {
            Text("Welcome to Word Play!")
                .font(.custom("Marker Felt Thin",fixedSize:40))
                .foregroundColor(.white)
            
            NavigationView{
                VStack{
                    NavigationLink("Get Started"){
                        NounView()
                        
                        
                    }
                    
                    
                    
                    
                }
                .navigationViewStyle(.stack)
            }
        }
    }
}
