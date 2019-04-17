class Mailer < ApplicationMailer

    def send_message(user_name, user_mail, message)
      @user_name = user_name
      @user_mail = user_mail
      @message = message
      @admin_mail = minaminotabi@gmail.com
      
      mail(to: '@user_name', subject: '南の旅の予約', body:'Votre message a bien ete recu.')
      mail(to: 'minaminotabi@gmail.com', subject: '南の旅の予約', body:'#{@message}')

    end


end


