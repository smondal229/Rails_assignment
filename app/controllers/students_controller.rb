class StudentsController < ApplicationController
  def mail_record    
    StudentsMailer.send_record.deliver
    flash.notice = "Student record has been sent."
  end
end
