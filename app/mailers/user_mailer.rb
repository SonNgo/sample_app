class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.accout_activation.subject
  #
  def account_activation(user)
    user.create_activation_digest
    @user = user
    #debugger
    mail to: user.email, subject: "Accout Activation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    user.create_reset_digest
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
