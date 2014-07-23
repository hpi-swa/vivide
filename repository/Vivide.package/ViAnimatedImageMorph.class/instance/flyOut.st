actions
flyOut

	| scaleAnim fadeAnim |
	
	scaleAnim := AnimPropertyAnimation
		on: self
		property: #scaleToSize
		start: original extent
		end: original extent * 4
		duration: 500.

	fadeAnim := (AnimAlphaBlendAnimation
		fadeOutOn: self
		duration: 500)
		finishBlock: [self delete].

	scaleAnim register.	
	fadeAnim register.

	scaleAnim start: #deleteWhenFinished.
	fadeAnim start: #deleteWhenFinished.