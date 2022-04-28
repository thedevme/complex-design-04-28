import SwiftUI

struct SubmenuView: View {
    var body: some View {
        Text("Submenu View")
    }
    
    var spacer: some View {
        Group {
            Spacer()
            
            Divider()
                .frame(height: 22)
                .background(Color.black)
            
            Spacer()
        }
    }
}

struct SubmenuItemView: View {
    let first: String
    let last: String
    let icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            HStack(spacing: 0) {
                Text(first).custom(font: .bold, size: 14)
                Text(last).custom(font: .regular, size: 14)
            }
        }
    }
}

struct SubMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SubmenuView()
    }
}
