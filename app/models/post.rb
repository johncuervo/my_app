class Post < ApplicationRecord
  validates :title, :content, presence: true

  belongs_to :user
end


# ### ANTES
# Post.create(title: "titulo")
# Post.create!(title: "titulo")
#
# ### DURANTE
# post = Post.new(title: "")
# Post.save
# Post.save!
#
# ### DESPUES
# post = Post.find(1)
# post.update(title: "")
# post.update!(title: "")
#
# post = Post.find(2)
# post.valid? FALSE
# post.invalid? TRUE
