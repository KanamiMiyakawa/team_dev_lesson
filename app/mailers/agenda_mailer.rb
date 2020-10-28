class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_agenda_mail(agenda,member)
    @agenda = agenda
    @team = agenda.team
    mail to: member.email, subject: I18n.t('views.messages.delete_agenda_mail')
  end
end
