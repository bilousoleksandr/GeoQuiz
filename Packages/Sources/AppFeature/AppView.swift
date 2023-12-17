import SharedModels
import SharedViews
import SwiftUI

public struct AppView: View {
    public init() {}
    
    public var body: some View {
        TabView {
            List(Country.all) { country in
                HStack {
                    Text(country.name)
                    if let image = country.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                    }
                    Spacer()
                    VStack {
                        Text(country.continent.name)
                        if let symbol = country.currency?.symbol {
                            Text(symbol)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AppView()
}
