class PagesController < ApplicationController
    def index
        
    end

    def create
        to = params[:to]
        body = params[:body]
        service = TwilioSmsService.new
        
        response = service.send_sms(to, body)

        if response
        flash[:notice] = "SMS sent successfully to #{to}!"
        else
        flash[:alert] = "Failed to send SMS. Check your credentials or number."
        end

        redirect_to root_path
    end
end
