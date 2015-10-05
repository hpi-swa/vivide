as yet unclassified
computeSubmorphElevation

	submorphElevation := ((self submorphs
		collect: [:m | 
			m computeSubmorphElevation.
			self top - m top + m submorphElevation])
		ifEmpty: [0] ifNotEmpty: [:c | c max]) max: self elevation.