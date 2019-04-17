class Mailer < ApplicationMailer

    def send_message(user_name, user_mail, message)
      @user_name = user_name
      @user_mail = user_mail
      @message = message
      @admin_mail = minaminotabi@gmail.com
    end


end


