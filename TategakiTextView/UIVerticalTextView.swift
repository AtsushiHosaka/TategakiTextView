import SwiftUI
import UIKit

class UIVerticalTextView: UIView {
    init(text: String) {
        super.init(frame: .zero)
        let swiftUIView = VerticalTextView(text: text)
        let hostingController = UIHostingController(rootView: swiftUIView)

        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(hostingController.view)

        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: self.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
