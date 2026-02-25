📞 Twilio Integration in Rails
This project demonstrates how to integrate Twilio with a Ruby on Rails application to send SMS notifications.

🚀 Features
Send SMS using Twilio API
Rails backend integration
Environment-based configuration using .env
Clean and simple implementation

🛠️ Tech Stack
Ruby on Rails
Twilio API
PostgreSQL (optional)
dotenv-rails

⚙️ Setup Instructions
1. Clone the Repository
git clone git@github.com:Saurabhkr001/Twilio-in-rails.git
cd Twilio-in-rails

3. Install Dependencies
bundle install

4. Configure Environment Variables
Create a .env file in the root directory:

TWILIO_ACCOUNT_SID=your_account_sid
TWILIO_AUTH_TOKEN=your_auth_token
TWILIO_PHONE_NUMBER=your_twilio_number

4. Start the Server
rails server

📲 Usage
Trigger SMS sending from controller/action
Example:
TwilioService.new.send_sms(to, message)

📂 Project Structure
app/services/twilio_service.rb → Twilio logic
controllers/ → Handles requests
.env → Stores sensitive credentials

🔐 Notes
Do NOT commit .env file
Use .gitignore to keep secrets safe

🧪 Future Improvements
Background jobs (Sidekiq)
OTP authentication
