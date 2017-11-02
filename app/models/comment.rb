class Comment < ApplicationRecord

#ac need to hone this ability to create these relations
  belongs_to :user
  belongs_to :blog
end
