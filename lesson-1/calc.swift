import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    @State private var result: String = "0"

    let buttons: [[String]] = [
        ["7", "8", "9", "÷"],
        ["4", "5", "6", "×"],
        ["1", "2", "3", "−"],
        ["0", ".", "=", "+"],
        ["C"]
    ]

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Text(input)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                .foregroundColor(.gray)

            Text(result)
                .font(.system(size: 48, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()

            ForEach(buttons, id: \.self) { row in
                HStack(spacing: 20) {
                    ForEach(row, id: \.self) { button in
                        Button(action: {
                            self.handleTap(button)
                        }) {
                            Text(button)
                                .font(.title)
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(self.buttonColor(button))
                                .clipShape(Circle())
                        }
                    }
                }
            }
        }
        .padding()
    }

    private func handleTap(_ value: String) {
        switch value {
        case "=":
            let expr = input
                .replacingOccurrences(of: "×", with: "*")
                .replacingOccurrences(of: "÷", with: "/")
                .replacingOccurrences(of: "−", with: "-")

            let exp = NSExpression(format: expr)
            if let res = exp.expressionValue(with: nil, context: nil) as? NSNumber {
                result = "\(res)"
            } else {
                result = "Error"
            }

        case "C":
            input = ""
            result = "0"

        default:
            input += value
        }
    }

    private func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 20) / 4
    }

    private func buttonColor(_ value: String) -> Color {
        if ["+", "−", "×", "÷", "="].contains(value) {
            return .orange
        } else if value == "C" {
            return .red
        } else {
            return .gray
        }
    }
}

#Preview {
    ContentView()
}
