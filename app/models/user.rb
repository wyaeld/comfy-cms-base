class User < ActiveRecord::Base

  has_one :google_user_info, dependent: :destroy

end
