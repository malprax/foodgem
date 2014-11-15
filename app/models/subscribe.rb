class Subscribe < ActiveRecord::Base
  belongs_to :customer
  include MultiStepModel
  
  def self.total_steps
    4    
  end
  
  def to_s
    customer.email
  end
end
