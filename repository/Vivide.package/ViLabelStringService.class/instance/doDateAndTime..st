squeak - chronology
doDateAndTime: aDateAndTime

	| today yesterday date time |
	today := DateAndTime now asDate. "Date year: 2018 month: 2 day: 13".
	yesterday := today - 1 day.
	
	date := aDateAndTime asDate.
	time := aDateAndTime asTime.
	
	^ String streamContents: [:result |
			
			date = today
				ifTrue: [time print24: true showSeconds: false on: result]
				ifFalse: [
					date = yesterday
						ifTrue: [result nextPutAll: 'Yesterday']
						ifFalse: [
							(today - date) days < 7
								ifTrue: [result nextPutAll: date weekday]
								ifFalse: [
									result nextPutAll: (aDateAndTime monthName copyFrom: 1 to: 3).
									result space.
									result nextPutAll: (aDateAndTime dayOfMonth asString padded: #left to: 2 with: $0).
									
									date year < today year
										ifTrue: [result space; nextPutAll: date year asString]]]]]