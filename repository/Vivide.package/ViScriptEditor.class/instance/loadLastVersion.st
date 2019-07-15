actions - editing
loadLastVersion

	| lastStepVersion lastStep |

	(ViScriptVersion versionsOfMethod: self thisStep referenceInArchive) in: [:versions | 
		versions size > 1
			ifFalse: [^ self]
			ifTrue: [lastStepVersion := versions second]].
	
	self thisStep converter
			into: self thisStep organization
			during: [:converter | converter importStep: lastStepVersion asDictionary].
	lastStepVersion fileIn. "To be compatible with Squeak's versioning."