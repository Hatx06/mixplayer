class User < ApplicationRecord
    
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  
   def posts
    return Post.where(user_id: self.id)
  end
  
  def places
      return Place.find_by(id: self.place_id)
  end
  
end
