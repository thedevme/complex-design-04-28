import SwiftUI

struct SelectFareView: View {
    
    @State private var currentIndex: Int = 0
    let coloredNavAppearance = UINavigationBarAppearance()
    
    init() {}
    
    var cards: [CardData] = [
        CardData(),
        CardData(),
        CardData(),
        CardData()
    ]
    
    var body: some View {
        ZStack {
            Color(.baseWhite).edgesIgnoringSafeArea(.bottom)
            
            VStack {
                TripSummaryView(step: "2").padding(.top, 10)
                VStack {
                    Text("Select fare to New York").custom(font: .bold, size: 14)
                    Text("Your selection applies to this flight only").custom(font: .regular, size: 14)
                }.foregroundColor(.baseDarkBlue)
                
                Spacer()
                CardSummaryView()
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("$601").custom(font: .bold, size: 42)
                        Text("Per traveler").custom(font: .regular, size: 14)
                        Text("$601 for 1 travaler").custom(font: .regular, size: 14)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: SeatSelectionView()) {
                        Text("CONTINUE")
                            .custom(font: .bold, size: 16)
                            .padding()
                            .background(Color.baseLightBlue)
                            .cornerRadius(10)
                    }.buttonStyle(PlainButtonStyle())
                }
                .padding()
                .background(Color.baseLightGrey)
            }
        }
    }
}

struct SelectFareView_Previews: PreviewProvider {
    static var previews: some View {
        SelectFareView()
    }
}
