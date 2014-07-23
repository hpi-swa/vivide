as yet unclassified
isSpecial
	"Special queries have a custom id."
	
	self flag: #hacky. "mt: Check for real UUID."
	^ self id size < 36