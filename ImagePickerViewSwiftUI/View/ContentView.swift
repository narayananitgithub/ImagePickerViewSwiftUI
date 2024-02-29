//
//  ContentView.swift
//  ImagePickerViewSwiftUI
//
//  Created by Narayanasamy on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PRoperties
    @State private var isImagePickerPrsented = false
    @State private var selectedImage: UIImage?
    // MARK: - BODY
    var body: some View {
        VStack {
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            } else {
                Text("No images selected")
                    .padding()
            }
            Button("Choose Image") {
                isImagePickerPrsented.toggle()
            }
            .padding()
            .sheet(isPresented: $isImagePickerPrsented) {
                ImagePicker( selectedImage: $selectedImage)
            }
        }
    }
}
// MARK: - PREVIEW
#Preview {
    ContentView()
}
