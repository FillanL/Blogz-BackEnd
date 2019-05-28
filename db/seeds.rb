
# User.create(first_name:Faker::Name.first_name, last_name: "doe",username: "JD", location: "New York, NY")
# User.create(first_name:"jane", last_name: "doe",username: "JaneD", location: "New York, NY")

# Article.create(user_id:1,title:"abc",content:"sadanj",keyword:"stuff",category:"business",sub_category:"stuff")

# SavedArticle.create(user_id:1,article_id:1)



# Faker::LoremPixel.image("50x60"

35.times do
User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name ,
    username: Faker::Superhero.name,
    password: "123",
    location: Faker::Address.state,
    img_url: Faker::LoremPixel.image("50x60")
)
Article.create(
    user_id:1+ Random.rand(20),
    title:Faker::Book.title,
    featured:Faker::Boolean.boolean(0.40),
    content:"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vitae illum ab sint minus ad quidem mollitia aut magnam culpa dicta atque ipsum, libero molestiae eligendi velit aliquam voluptas aspernatur aliquid.",
    keyword:Faker::Book.genre,
    category:"business",
    sub_category:"stuff",
    article_url:Faker::LoremPixel.image("50x60")
    
)
SavedArticle.create(
    user_id:1+ Random.rand(20),
    article_id:1+ Random.rand(20)
)

end