def create_user
  User.create!(username: "Bone Crusher", email: "bc@dirtbag.com", password: "password")
end
def create_post
  Post.create!(content: "I am the best bone crusher ever!", user_id: User.last.id)
end
def create_comment
  Comment.create!(reply: "Whos crushing with me?", commenter_id: User.last.id, post_id: Post.last.id)
end
