class Gmath #game math
	def self.magnitude(x, y)
		Math.sqrt((x)**2 + (y)**2)
	end

	def self.dot(x1, y1, x2, y2)
		(x1*x2) + (x2*y2)
	end

	def self.to_degrees(radians)
		radians * (180/Math::PI)
	end

end