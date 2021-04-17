//
//  UIView+Declarator.swift
//
//  Created by Andrey Chernoprudov on 17.04.2021.
//

import SwiftUI

extension UIView {
    
}

struct Declarator_Previews: PreviewProvider {
    struct Presenter: UIViewRepresentable {
        let title: String
        let enabled: Bool

        func makeUIView(context: Context) -> UIView {
            let label = UILabel()
            label.text = "Declarator library"
            return label
        }

        func updateUIView(_ uiView: UIView, context: Context) {
        }
    }

    static var previews: some View {
        NavigationView {
            VStack {
                Presenter(title: "Super button", enabled: true)
                    .frame(height: 100, alignment: .center)
                Presenter(title: "Disabled button", enabled: false)
                    .frame(height: 100, alignment: .center)
            }
            .padding()
            .navigationBarTitle("Title", displayMode: .inline)

        }.preferredColorScheme(.dark)
    }
}
