class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.send_record.subject
  #
  def send_record
    @greeting = "Hi"

    mail(to: "to@example.org", subject: "Student record")
  end
end
