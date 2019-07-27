class StudentsController < ApplicationController
  def mail_record
    StudentsMailer.send_record.deliver
    flash.now.notice = "Student record has been sent."
  end
end
