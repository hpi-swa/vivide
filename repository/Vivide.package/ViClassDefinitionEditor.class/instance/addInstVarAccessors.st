actions
addInstVarAccessors
	"See Browser >> createInstVarAccessors"
	
	self theClass ifNotNil: [:aClass | | cr results |
		cr := String with: Character cr.
		results := OrderedCollection new.
		aClass instVarNames do: 
			[:aName | | newMessage setter |
			(aClass canUnderstand: aName asSymbol) ifFalse: [
				newMessage := aName, cr, cr, '	^ ', aName.
				results add: (aClass compile: newMessage classified: #accessing notifying: nil)].
			(aClass canUnderstand: (setter := aName, ':') asSymbol) ifFalse: [
				newMessage := setter, ' anObject', cr, cr,
					(aClass settersReturnValue ifTrue: ['	^'] ifFalse: ['	']),
					aName, ' := anObject'.
				results add: (aClass compile: newMessage classified: #accessing notifying: nil)]].
		"Open new methods."
		self flag: #performance. "mt: Consider adding a #artifactsRequested:."
		results do: [:selector | self artifactRequested: aClass >> selector]]