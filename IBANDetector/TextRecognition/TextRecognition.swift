/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
Provides the class for the text recognition and the structure to create the bounding boxes.
*/

import SwiftUI
import Vision

@Observable
class OCR {
    /// The array of `RecognizedTextObservation` objects to hold the request's results.
    var observations = [RecognizedTextObservation]()
    var ibans: [Iban] = []

    /// The Vision request.
    var request = RecognizeTextRequest()

    func performOCR(imageData: Data) async throws {
        /// Clear the `observations` array for photo recapture.
        observations.removeAll()

        /// Perform the request on the image data and return the results.
        let results = try await request.perform(on: imageData)

        /// Add each observation to the `observations` array.
        for observation in results {
            observations.append(observation)
        }
        
        detectTRIban()
    }
    
    func detectTRIban() {
        var recognizedIban = ""
        for observation in observations {
            guard let text = observation.topCandidates(1).first?.string.uppercased().filter({$0.isNumber || $0.isLetter}) else { continue }
            if !recognizedIban.isEmpty && recognizedIban.count < 26 {
                let missingCharCount = 26 - recognizedIban.count
                let startIndex = text.index(text.startIndex, offsetBy: 0)
                let offset = text.count > missingCharCount ? missingCharCount - text.count : 0
                let endIndex = text.index(text.endIndex, offsetBy: offset)
                recognizedIban += String(text[startIndex..<endIndex])
            }
            if let range = text.range(of: "TR") {
                if recognizedIban.count == 26 && recognizedIban.isIbanValid() {
                    self.ibans.append(Iban(iban: recognizedIban))
                }
                recognizedIban = ""
                let index = text.distance(from: text.startIndex, to: range.lowerBound)
                let startIndex = text.index(text.startIndex, offsetBy: index)
                let offset = text.count > 26 ? 26 - text.count : 0
                let endIndex = text.index(text.endIndex, offsetBy: offset)
                recognizedIban = String(text[startIndex..<endIndex])
            }
            if recognizedIban.count == 26 && recognizedIban.isIbanValid() {
                if !self.ibans.contains(where: {
                    $0.iban == recognizedIban
                }) {
                    self.ibans.append(Iban(iban: recognizedIban))
                }
                recognizedIban = ""
            }
        }
    }
}

/// Create and dynamically size a bounding box.
struct Box: Shape {
    private let normalizedRect: NormalizedRect

    init(observation: any BoundingBoxProviding) {
        normalizedRect = observation.boundingBox
    }

    func path(in rect: CGRect) -> Path {
        let rect = normalizedRect.toImageCoordinates(rect.size, origin: .upperLeft)
        return Path(rect)
    }
}
