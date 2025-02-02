
import SwiftUI
import PhotosUI

struct ImageView: View {
    @Binding var imageData: Data?
    @Binding var selectedImage: PhotosPickerItem?
    
    @State private var imageOCR = OCR()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    photoPicker
                    transcriptViewLink
                }
                recognizedImage
            }

            .onChange(of: imageData, initial: true) {
                Task {
                    try await imageOCR.performOCR(imageData: imageData!)
                }
            }
        }
    }
    
    var photoPicker: some View {
        PhotosPicker("Select New", selection: $selectedImage, matching: .images)
            .padding()
            .font(.headline)
            .background(Color.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }
    
    var transcriptViewLink: some View {
        NavigationLink(destination: TranscriptView(imageOCR: $imageOCR)) {
            Text("View Text")
                .padding()
                .font(.headline)
                .background(Color.blue)
                .foregroundStyle(.white)
                .clipShape(Capsule())
        }
    }
    
    @ViewBuilder
    var recognizedImage: some View {
        /// Convert the image data to a `UIImage`, and display it in an `Image` view.
        if let uiImage = UIImage(data: imageData!) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
                .overlay {
                    ForEach(imageOCR.observations, id: \.uuid) { observation in
                        Box(observation: observation)
                            .stroke(.red, lineWidth: 1)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                do {
                                    imageOCR.observations.remove(at: imageOCR.observations.firstIndex(where: {$0.uuid == observation.uuid})!)
                                }
                            }
                    }
                }
        }
    }
}
