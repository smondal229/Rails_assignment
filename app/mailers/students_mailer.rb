class StudentsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.students_mailer.send_record.subject
  #
  def send_record
    @greeting = "Hi"
    @student=Student.order_fifty(:name)
    mail(to: "to@example.org", subject: "Students record")
  end
end
