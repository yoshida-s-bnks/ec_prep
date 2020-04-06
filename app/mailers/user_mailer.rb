class UserMailer < ApplicationMailer
  def activation_needed_email(user)
    @user = user
    @url  = activate_user_url(@user.activation_token)
    mail(:to => user.email,
     :subject => "新規登録")
  end

  def activation_success_email(user)
    @user = user
    @url  = login_url()
    mail(:to => user.email,
         :subject => "登録完了！")
  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_password_email.subject
  #
  def reset_password_email(user)
    @user = User.find user.id
    @url = edit_password_reset_url(@user.reset_password_token)
    mail(to: user.email,  subject: "パスワード再設定")
  end
end
