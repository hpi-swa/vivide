accessing - private
currentGroupName

	^ self currentGroup ifNotNil: [:group | group key]