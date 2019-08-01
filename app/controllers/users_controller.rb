class UsersController < ApplicationController
  def download
    @user=User.order_fifty(:user_name)

    respond_to do |format|
      format.html
      format.csv {send_data @user.to_csv, filename: "users-#{Time.now}.csv"}
    end
  end

end
