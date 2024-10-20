import SwiftUI

struct LocationSuggestionView: View {
    let locations = [
        ("New York, NY", "ny"),      // Image name should be "ny"
        ("Washington, DC", "dc"),    // Image name should be "dc"
        ("Boston, MA", "boston"),    // Image name should be "boston"
        ("San Francisco, CA", "sf")  // Image name should be "sf"
    ]
    
    var body: some View {
        ZStack {
            // Set the background color to light teal
            Color(red: 0.733, green: 0.973, blue: 0.969)
                .edgesIgnoringSafeArea(.all)  // Extends the background color to cover the entire screen

            VStack(spacing: 20) {
                // Header with logo and icons
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .padding(.leading, 20)
                    Spacer()
                    Text("QUEST")
                        .font(.custom("Arial Rounded MT Bold", size: 30))
                        .foregroundColor(.teal)
                    Spacer()
                    HStack {
                        Image(systemName: "bell")
                        Image(systemName: "person.circle")
                    }
                    .font(.system(size: 24))
                    .padding(.trailing, 20)
                }
                .padding(.top, 40)

                // Title Text
                Text("Pick a location you would like to travel to:")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.purple)
                    .bold()
                    .padding(.horizontal)

                // Search bar
                HStack {
                    TextField("Search", text: .constant(""))
                        .padding()
                        .background(Color.pink.opacity(0.1))
                        .cornerRadius(8)
                    Image(systemName: "magnifyingglass")
                        .padding(.trailing, 10)
                }
                .frame(maxWidth: 350)
                .background(Color.pink.opacity(0.2))
                .cornerRadius(10)

                // Suggestions label
                Text("Suggestions:")
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)

                // Grid of locations
                GeometryReader { geometry in
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        ForEach(locations, id: \.0) { location in
                            VStack {
                                ZStack {
                                    // City Image
                                    Image(location.1)  // Load the image from the Assets
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: geometry.size.width / 2.3, height: geometry.size.width / 3)
                                        .cornerRadius(10)
                                    
                                    // City Name Overlay
                                    Text(location.0)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(5)
                                        .background(Color.black.opacity(0.7))
                                        .cornerRadius(5)
                                        .padding(4)
                                        .position(x: geometry.size.width / 4.6, y: geometry.size.width / 3.5)
                                }
                            }
                        }
                    }
                }
                .frame(height: 300)
                .padding(.horizontal)
                
                NavigationLink(destination: SimilarUsersView()) {
                    Text("Get Started")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5.0)
                }
                .padding(.bottom, 40)
            }
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    LocationSuggestionView()
}
