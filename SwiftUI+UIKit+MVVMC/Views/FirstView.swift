//
//  FirstView.swift
//  MVVM+Coordinator
//
//  Created by Victor on 01.03.2023.
//

import SwiftUI

struct FirstView: View {
    
    @ObservedObject var viewModel: FirstViewModel
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var login = ""
    @State private var password = ""

    public init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
    }
    var body: some View {
        VStack {
            Text("First View")
                .padding()
                .font(.system(size: 24, weight: .regular, design: .default))
            TextField("Login name", text:$login)
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
            TextField("Password", text:$password)
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
            Text("\(viewModel.statusText)")
                .foregroundColor(viewModel.statusColor)
                .padding()
            
            Button(action: {
                viewModel.userButtonPressed(login: login, password: password)
                if viewModel.isLoggedIn == true {
                    viewModel.coordinator?.isLoggedIn = viewModel.isLoggedIn
                }
            }) {
                Text("Login")
            }
            .padding()
            
        } //: VSTACK
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(viewModel: FirstViewModel())
    }
}
