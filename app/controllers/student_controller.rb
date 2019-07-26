class StudentController < ApplicationController
  def mail_record
    StudentMailer.send_record.deliver
    flash[:notice] = "Student record has been sent."
  end
end
