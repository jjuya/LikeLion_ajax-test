class Comment < ActiveRecord::Base
  belongs_to :post
  
  def self.MAX_LENGTH
    40
  end
  
  validates :body,  length: {maximum: self.MAX_LENGTH}, # 최대 40자 
                    presence: true # 빈칸은 안되고
                    
end
