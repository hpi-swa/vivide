actions
closeBoxHit

	(model respondsTo: #tryClose)
		ifTrue: [model tryClose]
		ifFalse: [super closeBoxHit].