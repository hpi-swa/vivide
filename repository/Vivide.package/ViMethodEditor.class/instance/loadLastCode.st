actions
loadLastCode
	"Toggle between two last versions of the code in local history."

	(ViMethodVersion versionsOfMethod: self reference) in: [:versions | 
		versions size > 1
			ifTrue: [versions second fileIn]].