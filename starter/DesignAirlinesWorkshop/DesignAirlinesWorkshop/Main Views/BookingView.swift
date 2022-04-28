import SwiftUI

struct BookingView: View {
    let fromLocation: Location = Location.init(id: 0, code: "LAX", name: "LAX Airport", state: "California", city: "Los Angeles")
    let toLocation: Location = Location.init(id: 0, code: "SFO", name: "San Francisco Airport", state: "California", city: "San Francisco")
    
    var body: some View {
        ZStack {
            Color(.baseWhite).edgesIgnoringSafeArea(.bottom)
            VStack(spacing: 0) {
                VStack(spacing: 0) {
                    BookingNavView()
                    SubmenuView()
                }
                
                ScrollView {
                    ZStack {
                        content
                    }
                }
                
                findFlightsButton
            }
        }
    }
    
    var content: some View {
        Text("content")
    }
    
    var findFlightsButton: some View {
        Text("button")
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
