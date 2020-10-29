class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_agenda_mail(agenda,team)
    @agenda = agenda
    @team = team
    mail to: team.members.pluck(:email), subject: I18n.t('views.messages.delete_agenda_mail')
  end
end
