copying
copyQuery
	"Copy all next steps."

	| lastStep newQuery |
	newQuery := self copy.
	lastStep := nil.
	self stepsDo: [:step |
		lastStep
			ifNil: [lastStep := newQuery]
			ifNotNil: [lastStep notifier doSilently: [
				lastStep next: step copy].
				lastStep := lastStep next]]
		ifCyclic: [:repeatedStep |
			newQuery stepsDo: [:newStep |
				(newStep valueOfProperty: #copyOf) = repeatedStep id
					ifTrue: [lastStep next: newStep. ^ newQuery]].
			self error: 'Repeated step not found in copy!'].
	
	"Register the copy."
	"Hmm..."
		
	^ newQuery