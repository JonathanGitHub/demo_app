class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user #use 'belongs_to' NOT 'belong_to'
  #strange code that limits the length of microposts to 140 characters!
  validates :content, :length => { :maximum => 140}#note that the effects are immediately take place once you save the file/change the code
end
