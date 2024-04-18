require "sinatra"
require "sinatra/reloader"

get("/") do
 
  erb(:homepage)
  
end

get("/rock") do
 moves= ["rock", "paper", "scissors"]
 @comp_move=moves.sample

 if @comp_move=="rock"
  @result_="tied"
 elsif @comp_move=="paper"
  @result_="lost"
 else
  @result_="won"
 end
  
erb(:rock)

end

get("/paper") do
  moves= ["rock", "paper", "scissors"]
  @comp_move=moves.sample
 
  if @comp_move=="paper"
   @result_="tied"
  elsif @comp_move=="scissors"
   @result_="lost"
  else
   @result_="won"
  end
   
 erb(:paper)
 
 end
 
 get("/scissors") do
  moves= ["rock", "paper", "scissors"]
  @comp_move=moves.sample
 
  if @comp_move=="scissors"
   @result_="tied"
  elsif @comp_move=="rock"
   @result_="lost"
  else
   @result_="won"
  end
   
 erb(:scissors)
 
 end
