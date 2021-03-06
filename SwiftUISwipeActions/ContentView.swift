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
                ForEach(items,id:\.self) { item in
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.blue)
                        Text(item)
                    }
                    .swipeActions {
                        Button(action: {
                            print("押した")
                        }) {
                            Image(systemName: "bell")
                        }
                        .tint(.yellow)
                        
                        Button(action: {
                            print("押した")
                        }) {
                            Image(systemName: "trash")
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading) {
                        Button(action: {
                            print("押した")
                        }) {
                            Image(systemName: "gear")
                        }
                        .tint(.purple)
                    }
                }
            }
            .navigationTitle("To Do List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
