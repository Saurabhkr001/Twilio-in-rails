class TwilioSmsService
  def initialize
    @client = Twilio::REST::Client.new(
      ENV['TWILIO_ACCOUNT_SID'],
      ENV['TWILIO_AUTH_TOKEN']
    )
    @from_number = ENV['TWILIO_PHONE_NUMBER']
  end

  def send_sms(to, body)
    @client.messages.create(
      from: @from_number,
      to: to,
      body: body
    )
  rescue Twilio::REST::RestError => e
    Rails.logger.error "Twilio Error: #{e.message}"
    false
  end
end