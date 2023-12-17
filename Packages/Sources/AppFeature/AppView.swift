import SharedModels
import SharedViews
import SwiftUI

public struct AppView: View {
    public var body: some View {
        TabView {
            Text("New")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
        }
    }
    
    public init() {}
}
