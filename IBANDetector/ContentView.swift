//
//  ContentView.swift
//  VisionTest
//
//  Created by ali cihan on 28.01.2025.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    @State var imageData: Data?
    @State var selectedImage: PhotosPickerItem?
    
    var body: some View {
        VStack{
            PhotosPicker("Photo", selection: $selectedImage, matching: .images)
            if imageData != nil {
                ImageView(imageData: $imageData, selectedImage: $selectedImage)
            }
        }
        .onChange(of: selectedImage) { oldValue, newValue in
            do {
                loadTransferable(from: selectedImage!)
            }
        }
    }
    
    func loadTransferable(from imageSelection: PhotosPickerItem) {
        imageSelection.loadTransferable(type: Data.self) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let image?):
                    imageData = image
                case .success(nil):
                    debugPrint("")
                case .failure(let error):
                    debugPrint(error.localizedDescription)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
