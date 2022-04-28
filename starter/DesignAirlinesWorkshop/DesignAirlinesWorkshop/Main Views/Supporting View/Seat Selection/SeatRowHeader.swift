import SwiftUI

struct SeatRowHeader: View {
    let header: String
    var body: some View {
        HStack {
            Text("Seat Header")
        }
        .foregroundColor(.white)
    }
}

struct SeatRowHeader_Previews: PreviewProvider {
    static var previews: some View {
        SeatRowHeader(header: "Business Class")
            .background(Color.black).previewLayout(.sizeThatFits)
    }
}
