import SwiftUI

struct InfoListItemView: View {
    
    let title: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("\(title)")
                .font(.custom("HelveticaNeue-Light", size: 14))
                .foregroundColor(.textColor)
                .padding([.top, .bottom], 18)
                .padding([.leading, .trailing], 15)
                .listRowInsets(EdgeInsets())
            Divider()
                .background(Color.customGray)
        }
        .contentShape(Rectangle())
    }
    
}

struct InfoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        InfoListItemView(title: "Title")
    }
}
