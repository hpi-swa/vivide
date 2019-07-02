vivide - other
doMethodVersion: aMethodVersion

	| theClass compiledMethod |
	theClass := aMethodVersion theClass.
	theClass ifNil: [^ ViToolSet printRelativeTimeStamp: aMethodVersion timeStamp].

	compiledMethod := aMethodVersion theClass anyMethodAt: aMethodVersion selector.

	(((compiledMethod) timeStamp = aMethodVersion stamp
		and: [aMethodVersion sourceString = (compiledMethod) getSource asString])
			ifTrue: ['<b>{1}</b>']
			ifFalse:['{1}']) in: [:template |
				^ template format: {
					[ViToolSet printRelativeTimeStamp: aMethodVersion timeStamp]
						on: Error do: ['-']}]