import SwiftUI

struct VerticalTextView: View {
    let text: String
    
    var body: some View {
        HStack(alignment: .top) {
            ForEach(text.components(separatedBy: "\n").reversed(), id: \.self) { line in
                VStack {
                    ForEach(Array(line), id: \.self) { character in
                        Text(String(character))
                    }
                }
            }
        }
    }
}

struct VerticalTextView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalTextView(text: "縦書きの\nサンプル")
    }
}
