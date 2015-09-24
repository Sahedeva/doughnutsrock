class Hamming

	def self.compute(nucl1,nucl2)
		if nucl1.length == nucl2.length 
			count = 0
			for i in 0..nucl1.length
				if nucl1[i] != nucl2[i]
					count+= 1 	
				end
			end
			return count
		else
			raise ArguementError
		end
	end
end