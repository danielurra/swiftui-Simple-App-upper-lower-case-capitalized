# SwiftUI Simple App Upper-Lower case and Capitalized
This is a simple app that allow the user to enter his/her desired text and then use one of the three<br>
buttons to conver the text to:
* Uppercase
* Capitalized
* Lowercase

![upper_lower-case-capitalized](https://github.com/danielurra/swiftui-Simple-App-upper-lower-case-capitalized/assets/51704179/4a3f8404-2ebc-4bec-bc07-00d4632f380c)<br>
## Grab the code
```swift
import SwiftUI

struct ContentView: View {
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
```
## Copy functionality
Additionaly the user can copy the converted text to the phone's clipboard<br>
to have it available to be used on another App e.g. Safari browser.<br>

