import SwiftUI

struct SeatButtonView: View {
    @State private var isChecked = false
    var data: Seat
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        ZStack {
            Text("Seat Button View")
        }
    }
    
    var available: some View {
        Text("available")
    }
    
    func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
}

struct SeatButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SeatButtonView(data: Seat(row: 0, seat: "A"), width: 37, height: 37)
    }
}
