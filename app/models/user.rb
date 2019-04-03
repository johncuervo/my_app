class User < ApplicationRecord
#  validates :email, format: {width}
#  validates :phones, numericality: true
#  validates :phones, numericality: {only_integer: true}
#  validates :phones, numericality: {greater_than_or_equal_to: 5 }, presence: true
  validates :phones, presence: true, length: {minimum: 10}
  has_many :houses
  has_many :posts
  has_many :notes
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
