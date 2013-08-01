class Session < ActiveRecord::Base
  attr_accessible :name, :password, :status
end
