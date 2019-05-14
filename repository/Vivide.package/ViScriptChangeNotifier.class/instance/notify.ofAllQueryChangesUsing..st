public
notify: anObject ofAllQueryChangesUsing: oneArgumentSelector 
	"Notifies an object of any query changes."

	self 
		notify: anObject
		ofEvents: self allQueryEvents
		using: oneArgumentSelector