class VectorShip < Gosu::Window

	def initialize
		super(WINDOW_WIDTH, WINDOW_HEIGHT) # constants.rb
		self.caption = "Vector Ship 2"

		@background=Gosu::Image.new("images/background.png")
		@player=Gosu::Image.new("images/player.png")
		@angle_between = 0

		@player_x=(WINDOW_WIDTH/2-@player.width/2)
		@player_y=(WINDOW_HEIGHT/2-@player.height/2)


	end

	def needs_cursor?
		true
	end


	def update

		#@angle_between=MathMan.to_degrees( Math.acos( MathMan.dot(@player_x, @player_y, self.mouse_x, self.mouse_y) / MathMan.magnitude(@player_x, @player_y) * MathMan.magnitude(self.mouse_x, self.mouse_y) ) )
		#@angle_between=2*MathMan.to_degrees(Math.atan2(@player_x*self.mouse_y - @player_y*self.mouse_x, @player_x*self.mouse_x + @player_y * self.mouse_y))
		@angle_between=Gmath.to_degrees( Math.atan(-self.mouse_y / self.mouse_x) )
	end


	def draw
		@background.draw(0,0,0)
		puts @angle_between
		#@player.draw((WINDOW_WIDTH/2)-@player.width/2,(WINDOW_HEIGHT/2)-@player.height/2,1)
		@player.draw_rot(@player_x, @player_y,0, @angle_between)
		Gosu.draw_line(WINDOW_WIDTH/2-@player.width/2, WINDOW_HEIGHT/2-@player.height/2,Gosu::Color::WHITE, self.mouse_x, self
			.mouse_y, Gosu::Color::WHITE )

	end
	

end