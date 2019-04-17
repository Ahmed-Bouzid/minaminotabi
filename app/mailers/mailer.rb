class Mailer < ApplicationMailer

  def send_message(user_name, user_mail, message)
    puts "MESSAGE"
    @user_name = user_name
    @user_mail = user_mail
    @message = message

    mail(to: @user_mail, subject: '南の旅の予約', body:'Votre message a bien ete recu.')

  end

  def send_notification(user_name, user_mail, message)
    puts "NOTIFICATION"
    @user_name = user_name
    @user_mail = user_mail
    @message = message

    mail(to: "minaminotabi@gmail.com", subject: 'New Message', from: @user_mail,  body:"#{@user_name} just sent you un message : '#{@message}' ")

  end


end


