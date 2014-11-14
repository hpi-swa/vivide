actions
loadPreviousCode
	"Load the previous version of this method using local changes history. Takes the actual timestamp to determine predecessor."

	(ViMethodVersion versionsOfMethod: self reference) in: [:versions | | current |
		current := versions first timeStamp.
		(versions allButFirst
			detect: [:v | v timeStamp < current]
			ifNone: []) ifNotNil: [:previousVersion | previousVersion fileIn]].