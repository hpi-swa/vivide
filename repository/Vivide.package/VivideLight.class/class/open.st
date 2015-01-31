instance creation
open
	"Use last profile."
	
	self profiles size = 1
		ifTrue: [self openProfile: self profiles first]
		ifFalse: [self chooseProfile].