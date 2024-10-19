import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var phoneNumber: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            // Add the logo image at the top (replace "logo" with your actual image name)
            Image("logo") // Ensure "logo" exists in your Assets
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .padding(.top, 40)

            // Title Text
            Text("Create New Account")
                .font(.largeTitle)
                .foregroundColor(.purple)
                .bold()
                .multilineTextAlignment(.center) // Center-align the title text
            
            // "Already Registered? Log in here." Text
            Text("Already Registered? Log in here.")
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center) // Center-align the subtitle
            
            // Name Field
            VStack(alignment: .center, spacing: 0) {
                Text("Name")
                    .font(.subheadline)
                    .foregroundColor(.purple)
                    .bold()
                    .multilineTextAlignment(.center) // Center-align text
                
                TextField("Name", text: $name)
                    .padding(.vertical, 8)
                    .cornerRadius(5.0)
                    .frame(maxWidth: 300)
            }
            
            // Email Field
            VStack(alignment: .center, spacing: 0) {
                Text("Email")
                    .font(.subheadline)
                    .foregroundColor(.purple)
                    .bold()
                    .multilineTextAlignment(.center) // Center-align text
                
                TextField("Email", text: $email)
                    .padding(.vertical, 8)
                    .cornerRadius(5.0)
                    .frame(maxWidth: 300)
            }

            // Password Field
            VStack(alignment: .center, spacing: 0) {
                Text("Password")
                    .font(.subheadline)
                    .foregroundColor(.purple)
                    .bold()
                    .multilineTextAlignment(.center) // Center-align text
                
                SecureField("Password", text: $password)
                    .padding(.vertical, 8)
                    .cornerRadius(5.0)
                    .frame(maxWidth: 300)
            }

            // Sign-Up Button with the light teal color
            Button(action: {
                print("Sign-up tapped")
            }) {
                Text("Sign up")
                    .foregroundColor(.black)
                    .frame(maxWidth: 100)
                    .padding()
                    .background(Color(red: 0.733, green: 0.973, blue: 0.969)) // Light teal color
                    .cornerRadius(5.0)
            }
            .padding(.bottom, 40) // Ensuring button isn't clipped
        }
        .frame(maxWidth: .infinity) // Ensure the VStack takes full width
        .padding()
    }
}

#Preview {
    ContentView()
}
