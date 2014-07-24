as yet unclassified
printRelativeTimeStamp: aTimeStamp

	| date time |
	date := aTimeStamp date in: [:d |
		d = Date today
			ifTrue: ['Today']
			ifFalse: [	d = Date yesterday
				ifTrue: ['Yesterday']
				ifFalse: [
					"MM-DD-YYY"
					d printFormat: #(1 2 3 $- 1 1 2)]]].
	time := aTimeStamp time in: [:t |
		String streamContents:
			[ :aStream | t print24: true showSeconds: false on: aStream ]].

	^ date, ', ', time