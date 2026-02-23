class SmsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:receive_sms]

    def receive_sms
        from = params[:From] 
        body = params[:Body]

        Rails.logger.info "Received SMS from #{from}: #{body}"
        reply_body = if body.downcase.strip == "hello"
                    "Hi there! Thanks for messaging this Rails 8 app."
                    else
                    "You said: #{body}. Reply 'hello' for a greeting."
                    end

        twiml = Twilio::TwiML::MessagingResponse.new do |r|
        r.message(body: reply_body)
        end

        render xml: twiml.to_xml
    end
end
