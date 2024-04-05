import SwiftUI

struct ContentView: View {
    
    //Skor için değişken
    @State var score = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                
                NavigationLink(destination: Quiz1()){
                    Text("BAŞLA")
                }
                HStack{
                    //Skor'unu Gör
                    Text("Bir Önceki Skorunuz:  \(self.score) / \(myQuiz1.count)")
                        .onAppear(){
                            self.score = LoadScore(quiz: "myQuiz1")
                        }
                }
            }
            .navigationBarTitle("Araç Markaları", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
