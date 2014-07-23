operations
doMethodVersion: aMethodVersion

	^ [aMethodVersion timeStamp printRelativeTimeStamp]
		on: Error
		do: ['-']