import SwiftUI

enum SeatSection: String {
    case business
    case comfort
    case main
}

struct AirplaneSeatSection: View {
    let title: String
    let seatWidth: CGFloat
    let seatHeight: CGFloat
    let type: SeatSection
    
    var businessClassRows = Array(1...5)
    var comfortPlusRows = Array(6...8)
    var mainRows = Array(9...14)
    
    var seatRows: [String] = ["A", "B", "C", "D", "E", "F"]
    
    let businessClassGrid = [
            GridItem(.fixed(37.0), spacing: 15.0, alignment: .top),
            GridItem(.fixed(37.0), spacing: 60.0, alignment: .top),
            GridItem(.fixed(37.0), spacing: 15.0, alignment: .top),
            GridItem(.fixed(37.0), spacing: 15.0, alignment: .top)
    ]
    
    let comfortPlusGrid = [
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 37.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top)
    ]
    
    var body: some View {
        VStack {
            SeatRowHeader(header: title)
            
            Text("Airline Seat Sections").foregroundColor(.white)
        }
        .frame(width: 250)
    }
    
    var comfort: some View {
        Text("Comfort")
    }
    
    var main: some View {
        Text("Main")
    }
    
    var business: some View {
        Text("Business")
    }
}

struct AirplaneSeatSection_Previews: PreviewProvider {
    static var previews: some View {
        AirplaneSeatSection(title: "Business", seatWidth: 37, seatHeight: 37, type: .business)
            .background(Color.black)
    }
}
