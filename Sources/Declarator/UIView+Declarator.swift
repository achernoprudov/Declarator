//
//  UIView+Declarator.swift
//
//  Created by Andrey Chernoprudov on 17.04.2021.
//

import SwiftUI


struct Declarator_Previews: PreviewProvider {
    struct Presenter: UIViewRepresentable {
        func makeUIView(context: Context) -> UIView {
            return .column(views: [
                UIView.text("Hello, Declarator")
                    .font(UIFont.preferredFont(forTextStyle: .title1)),
                
                UIView.text("This is simple example of Declarator UI. \n See examples ")
                    .font(UIFont.preferredFont(forTextStyle: .body))
            
            ])
        }

        func updateUIView(_ uiView: UIView, context: Context) {
        }
    }

    static var previews: some View {
        NavigationView {
            List {
                Presenter()
                    .frame(height: 200)
            }
            .padding()
            .navigationBarTitle("Title", displayMode: .inline)

        }.preferredColorScheme(.dark)
    }
}
