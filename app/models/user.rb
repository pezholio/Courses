class User < ActiveRecord::Base
	validates :email, :email_format => {:message => 'is not an email address'}
end
