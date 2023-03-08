//
//  SecondView.swift
//  MVVM+Coordinator
//
//  Created by Victor on 01.03.2023.
//

import SwiftUI

struct SecondView: View {
    
    @ObservedObject var viewModel: SecondViewModel
    
    var body: some View {
        HStack {
            Button(action: {
                viewModel.buttonDidPress()
            }) {
                Text("Hi \(viewModel.user?.login ?? "")")
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(viewModel: SecondViewModel())
    }
}
