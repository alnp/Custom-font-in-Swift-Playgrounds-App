import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("Kalam Bold")
                .font(.custom(.kalamBold, size: 24))
            Text("MoonlessSC Regular")
                .font(.custom(.moonlessSCRegular, size: 16))
            Text("Updock Regular")
                .font(.custom(.updockRegular, size: 40))
        }
    }
}
