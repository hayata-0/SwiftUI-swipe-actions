import SwiftUI

struct ContentView: View {
    let items = [
        "朝起きたら勉強をする",
        "洗濯をする",
        "学校の課題をする",
        "ご飯を作る",
        "朝起きたら勉強をする",
        "洗濯をする",
        "学校の課題をする",
        "ご飯を作る",
        "朝起きたら勉強をする",
        "洗濯をする",
        "学校の課題をする",
        "ご飯を作る"
    ]
    
    var body: some View {
        NavigationView {
            List {
               
            }
            .navigationTitle("To Do List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
