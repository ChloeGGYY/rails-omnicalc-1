Rails.application.routes.draw do
  get("/square/new",{:controller =>"zebra", :action =>"square1"})
 
  get("/square/results",{:controller =>"zebra", :action =>"square2"})
 
  get("/square_root/new",{:controller =>"zebra", :action =>"root1"})

  get("/square_root/results",{:controller =>"zebra", :action =>"root2"})

  get("/payment/new",{:controller =>"zebra", :action =>"payment1"})

  get("/payment/results",{:controller =>"zebra", :action =>"payment2"})

  get("/random/new",{:controller =>"zebra", :action =>"random1"})

  get("/random/results",{:controller =>"zebra", :action =>"random2"})
 
  get("/",{:controller =>"zebra", :action =>"home"})
 
 
 end
