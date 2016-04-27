processing
updateView: aMorph forEnvironment: anObject
	"The view is normally the (current) item view (i.e. something with TViObjectView) and the environment is an instance of ViPane. Returns the updated view, which might be totally different from the given one."
	
	^ self viewClass in: [:cls |
		aMorph class == cls
			ifTrue: [aMorph]
			ifFalse: [cls new]]