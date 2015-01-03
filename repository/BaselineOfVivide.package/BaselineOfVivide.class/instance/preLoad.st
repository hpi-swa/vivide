as yet unclassified
preLoad
	
	(Smalltalk includesKey: #ActiveVivide)
		ifFalse: [Smalltalk at: #ActiveVivide put: nil].
	(Smalltalk includesKey: #thisScript)
		ifFalse: [Smalltalk at: #thisScript put: nil].
	(Smalltalk includesKey: #thisPane)
		ifFalse: [Smalltalk at: #thisPane put: nil].
	(Smalltalk includesKey: #thisView)
		ifFalse: [Smalltalk at: #thisView put: nil].