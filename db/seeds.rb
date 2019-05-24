


User.create(first_name:"john", last_name: "doe",username: "JD", location: "New York, NY")
User.create(first_name:"jane", last_name: "doe",username: "JaneD", location: "New York, NY")

Article.create(user_id:1,title:"abc",content:"sadanj",keyword:"stuff",featured:"yes should be bool",category:"business",sub_category:"stuff")

SavedArticle.create(user_id:1,article_id:1)