require "gosu"
require "rmagick"
require "matrix"

require_relative "lib/constants"
require_relative "lib/math"
require_relative "mouse" #mouse positions etc
require_relative "window" # The main library for rendering the window




$window = VectorShip.new #We make the window a global variable `$window`,
     					 #and the only global variable

unless defined? Ocra #can be compiled
	$window.show
end