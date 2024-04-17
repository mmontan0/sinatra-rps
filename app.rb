require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
 moves= ["rock", "paper", "scissors"]
 comp_move=moves.sample
 result_=""

 if comp_move=="rock"
  result_="tied"
 elsif comp_move=="paper"
  result_="won"
 else
  result_="lost"
 end

  "
  <h2>
  We played rock!
  </h2>
  <h2>
  They played #{comp_move}!
  </h2>
 <h2>
 We #{result_}!
 </h2>

  "
end


 