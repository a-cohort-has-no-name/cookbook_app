Recipe.destroy_all

User.create(name: "Jay", email: "jay@gmail.com", password: "password")

Recipe.create([
  {title: "Raw Eggs", ingredients: "Chicken", directions: "Squeeze the chicken", image: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", prep_time: 1, user_id: 1},
  {title: "Empty Sandwich", ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", image: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", prep_time: 72, user_id: 1},
  {title: "Licorice", ingredients: "Licorice", directions: "Buy licroice from store.", image: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", prep_time: 120, user_id: 1},
  {title: "Mud Pie", ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", image: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", prep_time: 84, user_id: 1},
  {title: "Pizza", ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", image: "http://twopizzapals.weebly.com/uploads/2/3/6/0/23602608/1338890_orig.jpg", prep_time: 455, user_id: 1},
  {title: "Corn on the cob", ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", image: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", prep_time: 22, user_id: 1}
])