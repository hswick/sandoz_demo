require 'opal'
require 'p5'
require 'sandoz'
include Sandoz

defsketch("content") do
	setup do
		size 600, 600
		rect 100, 100, 100, 100
	end

	x = 100
	y = 100

	draw do
		background 0
		rect x, y, 100, 100
		x+=1
		y+=1
	end
end
