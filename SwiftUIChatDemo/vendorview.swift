import SwiftUI

struct vendorview: View {
    @State private var selectedTime: String = "12:00 PM" // Default time selection
    let availableTimes = ["10:00 AM", "12:00 PM", "02:00 PM", "04:00 PM"]

    var body: some View {
        ZStack {
            // Set the background color to light teal (approximation)
            Color(red: 0.733, green: 0.973, blue: 0.969)
                .edgesIgnoringSafeArea(.all)  // Extends the background to cover the entire screen

            VStack(spacing: 20) {
                // Vendor Name at the top
                Text("Surf Lesson Shop")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)

                // Vendor Image
                Image("surf") // Ensure this image exists in your Assets
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .padding(.bottom, 20)

                // "Available Times" Text
                Text("Available Times")
                    .font(.headline)
                    .foregroundColor(.gray)

                // Time Selection Picker
                Picker("Select a Time", selection: $selectedTime) {
                    ForEach(availableTimes, id: \.self) { time in
                        Text(time).tag(time)
                    }
                }
                .pickerStyle(MenuPickerStyle()) // Dropdown picker style
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(maxWidth: 200)

                // "Book Appointment" Button
                Button(action: {
                    print("Appointment booked for \(selectedTime)")
                }) {
                    Text("Book Appointment")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: 200)
                        .background(Color.blue)
                        .cornerRadius(5.0)
                }
                .padding(.top, 20)
            }
            .frame(maxWidth: .infinity)
            .padding()
        }
    }
}

#Preview {
    vendorview()
}
