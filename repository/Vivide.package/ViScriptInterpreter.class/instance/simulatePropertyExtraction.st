interpreting - private
simulatePropertyExtraction
	"Call this if there is no script to extract properties for the current objects."
	
	self clearProperties.
	self properties add: (self objects collect: [:object |
		{ #object -> object. #text -> object printString. #'_simulated' -> true }]).