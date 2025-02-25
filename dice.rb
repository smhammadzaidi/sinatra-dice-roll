require "sinatra"
require "sinatra/reloader"

get ("/") do
  "Dice Roll Project"
end


get ("/dice") do
"<h1>Dice Roll</h1>"
<a href= /dice/2/6><"Roll Two 6 Sided Die"</a>
<a href= /dice/2/10><"Roll Two 10 Sided Die"</a>
<a href= /dice/1/20><"Roll One 20 Sided Die"</a>
<a href= /dice/5/4><"Roll Five 4 Sided Die"</a>
end

get ("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rollled a #{first_die} and a #{second_die} for a total of #{sum}"

  "<h1>2d6</h1>
  <p>#{outcome}</p>"
end

get ("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rollled a #{first_die} and a #{second_die} for a total of #{sum}"

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end

get ("/dice/1/10") do
  first_die = rand(1..10)
  sum = first_die

  outcome = "You rollled a #{first_die} for a total of #{sum}"

  "<h1>1d10</h1>
  <p>#{outcome}</p>"
end

get ("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die

  outcome = "You rollled a #{first_die}, #{second_die}, #{third_die}, #{fourth_die} and a #{fifth_die} for a total of #{sum}"

  "<h1>5d4</h1>
  <p>#{outcome}</p>"
end
