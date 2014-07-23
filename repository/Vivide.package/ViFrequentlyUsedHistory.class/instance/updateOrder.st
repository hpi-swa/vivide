private
updateOrder

	objects := self objects sorted: [:o1 :o2 |
		(self frequencies at: o1) >= (self frequencies at: o2)].