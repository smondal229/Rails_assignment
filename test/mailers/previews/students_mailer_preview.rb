# Preview all emails at http://localhost:3000/rails/mailers/students_mailer
class StudentsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/students_mailer/send_record
  def send_record
    StudentsMailer.send_record
  end

end
