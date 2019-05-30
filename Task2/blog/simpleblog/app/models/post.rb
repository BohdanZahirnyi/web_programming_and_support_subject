class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: { minimum: 5 }

  def self.search(search)
  if search.present?
    where('title LIKE ?', "%#{search}%")
  else
    @post=Post.all
end
end

def self.sort(sort)
  if(sort=="Назва")
  @post = Post.all.order(:title)

elsif(sort=="Дата")
@post = Post.all.order(created_at: :desc)
else
  @post = Post.all
end
end
end
