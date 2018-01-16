# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Season.destroy_all
Beer.destroy_all

Season.create!([
  	{:id => 4, name: "Winter", year: 2018},
  	{:id => 3, name: "Fall", year: 2017},
  	{:id => 2, name: "Summer", year: 2017},
  	{:id => 1, name: "Spring", year: 2017}
])

Beer.create!([
	{product_id: 547042, name: "E.S.B.", fullname: "Extra Special Bitter", season_id: 4, description: "E.S.B. is an English-style pale ale. Despite the fact that E.S.B. stands for Extra Special Bitter, the style is actually renowned for achieving great balance of malt sweetness and hop bitterness. Our version of this classic style is made with Goldings hops and fermented with English Ale yeast. The label art is a nod to the iconic and quirky history of British motoring."  },
	{product_id: 547042, name: "Osmium", fullname: "Wee heavy", season_id: 4, description: "Originating in the 1800s, Scottish ales were classified on a “shilling” scale based on their alcohol strength, typically ranging from 60 shilling (“light”) to 90 (“wee heavy”). The 90 shilling beer would be served up in smaller, or wee, quantities due to its higher alcohol content. Today the style has found popularity amongst North American and European audiences in need of winter warming.

	 As for the name, Osmium is the densest element on the periodic table and has incredible thermal conductivity. Our Osmium Scottish-style strong ale has incredible warming capabilities too – it’s the (wee) heavy metal of beer!"  },
	{product_id: 547042, name: "Double Identity", fullname: "D.I.P.A. (Double I.P.A.)", season_id: 4, description: "A boat-load of extra hops (a natural preservative) made India Pale Ales (I.P.A.s) historically better suited for long voyages when shipping to British soldiers stationed afar, including India. Their distinct taste caught on, and now these ales are widely known and enjoyed for their aggressively hopped aromas and flavours. D.I.P.A.s (Double I.P.A.s) are bigged up in both strength and hop character. In Double Identity, a pale ale base malt lets the hops sing out."  },

	{product_id: 515213, name: "Full Time", fullname: "I.P.A.", season_id: 2, description: "Full Time is an aromatic West Coast style I.P.A. It pours hazy deep gold with a dense white foam. Big tropical fruit aromas gives way to citrus and pine, courtesy of select organic American and New Zealand hops. Expect bold flavours and balanced hop bitterness."},
	{product_id: 515213, name: "Buenos Dias", fullname: "Gruit Ale", season_id: 2, description: "Buenos Dias is a gruit ale brewed with organic lime juice, organic orange and lime peel, and sea salt. The zippy lime flavour is accented with a lick of salt. Kick back and enjoy the zest of a classic Margarita in each sip! Hazy, citrus, refreshing."},
	{product_id: 515213, name: "Wag The Wolf", fullname: "Hopfenweisse", season_id: 2, description: "Wag the Wolf is a weissbier (wheat beer) that has been hopped with organic New Zealand varieties to provide abundant aromas of citrus and tropical fruit. Offers up pleasant fruit and spice flavours with a restrained bitterness on the finish."}
])