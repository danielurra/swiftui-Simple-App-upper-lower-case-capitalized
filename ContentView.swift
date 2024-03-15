import SwiftUI

struct ContentView: View {
    //    @State var userText = ""
    @State var userText = "Friends will be friends"
    @State var capMode = 1
    
    var body: some View {
        VStack {
            
            Spacer()
            
            if capMode == 1 {
                Text(userText.uppercased()) // ALL CAPS capMode 1
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
            }
            if capMode == 2 {
                Text(userText.capitalized) // Fisrt Letter capMode 2
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
            }
            if capMode == 3 {
                Text(userText.lowercased()) // all lowercase capMode 3
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
            }
            
            Spacer()
            
            Button(action: { // big orange button
                let pasteboard = UIPasteboard.general
                
                if capMode == 1 {
                    pasteboard.string = userText.uppercased()
                }
                if capMode == 2 {
                    pasteboard.string = userText.lowercased()
                }
                if capMode == 3 {
                    pasteboard.string = userText.capitalized
                }
            }) {
            CustomButtonView(titleDanny: "Copy", bkgndColorDanny: .orange)
            }
            
            HStack {
                
                Button(action: {capMode = 1}){
                    CustomButtonView(titleDanny: "ALL CAPS", bkgndColorDanny: .red)
                }
                Button(action: {capMode = 2}){
                    CustomButtonView(titleDanny: "First Letter", bkgndColorDanny: .blue)
                }
                Button(action: {capMode = 3}){
                    CustomButtonView(titleDanny: "lowercase", bkgndColorDanny: .green)
                }
                
            } // HStack

            TextField("Enter text here :)", text: $userText )
                .padding(.vertical)
            
        } // VStack
        .padding()
    }
}
#Preview {
    ContentView()
}

//if capMode == 1 {
//    Text(userText.uppercased()) // ALL CAPS capMode 1
//    // Text(userText.capitalized) // Fisrt Letter capMode 2
//    // Text(userText.lowercased()) // all lowercase capMode 3
//        .font(.largeTitle)
//        .foregroundStyle(.blue)
//}
