
import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var cherry = "cherry"
    @State var apple = "apple"
    @State var star = "star"
    
    
    var body: some View {
        
        VStack{
            Text("SwiftUI Slots")
                .font(.title)
            
            Spacer()
            
            Text("Credits: " + String(credits))
            
            Spacer()
            
            HStack{
                
                Image(apple)
                    .resizable()
                    .scaledToFit()
                
                Image(cherry)
                    .resizable()
                    .scaledToFit()
                
                Image(star)
                    .resizable()
                    .scaledToFit()


            }
            
            Spacer()
            
            Button {
                
                var fruits = ["apple", "cherry", "star"]
                
                var randomNumber1 = Int.random(in: 0...2)
                var randomNumber2 = Int.random(in: 0...2)
                var randomNumber3 = Int.random(in: 0...2)
                
                
                
                cherry = fruits[randomNumber1]
                apple = fruits[randomNumber2]
                star = fruits[randomNumber3]

                
                
                if (randomNumber1 == randomNumber2 && randomNumber1 == randomNumber3){
                    credits += 100
                } else {
                    credits -= 25
                }
                
            } label: {
                Text("Spin")
                    .padding()
                    .frame(width: 120, height: 30)
                    
            }
            .background(Color(.systemPink))
            .foregroundColor(.white)
            .cornerRadius(20)


            Spacer()

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
