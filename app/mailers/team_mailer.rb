class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_owner_mail(team, new_owner)
    @team = team
    @new_owner = new_owner
    mail to: @new_owner.email, subject: I18n.t('views.messages.you_are_new_owner')
  end
end
