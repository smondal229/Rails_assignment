class UserController < ApplicationController
  def download
    @user=User.order(:user_name).limit(50)

    respond_to do |format|
      format.html
      format.csv {send_data @user.to_csv, filename: "users-#{Time.now}.csv"}
    end
  end

end
