
import SwiftUI
import Vision

struct TranscriptView: View {
    @Binding var imageOCR: OCR

    var body: some View {
        VStack {
            NavigationStack {
                if imageOCR.ibans.isEmpty {
                    ContentUnavailableView.init("No result", systemImage: "magnifyingglass", description: Text("Couldn't find any IBAN in image."))
                } else {
                    List {
                        ForEach(imageOCR.ibans, id: \.ibanString) { iban in
                            VStack(alignment: .leading) {
                                Text(iban.ibanString)
                                Text(iban.bankName ?? "")
                            }
                        }
                        .onDelete(perform: deleteItems)
                    }
                
                }
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        imageOCR.ibans.remove(atOffsets: offsets)
    }
}
