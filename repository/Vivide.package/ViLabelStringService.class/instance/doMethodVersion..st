operations
doMethodVersion: aMethodVersion

	^ [ViToolSet printRelativeTimeStamp: aMethodVersion timeStamp]
		on: Error
		do: ['-']