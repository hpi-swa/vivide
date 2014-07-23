as yet unclassified
ensureRepositoryAccessFor: spec

	| privatePackages loginData |
	privatePackages := spec.
	loginData := Dictionary new.
		
	privatePackages keysAndValuesDo: [:packageName :location |
		| repository addDefault |
		addDefault := false.
		"Try to find the repository in the corresponding package."
		repository := (MCPackage named: packageName) workingCopy repositoryGroup in: [:group |
			group repositories
				detect: [:repo | repo description endsWith: location second]
				ifNone: []].
		"Try to find the repository in the default group."
		repository ifNil: [repository := (MCRepositoryGroup default repositories
			detect: [:repo | repo description endsWith: location second]
			ifNone: []) ifNotNil: [:r | addDefault := true. r]].
		
		"Create a new one if still not found."
		repository ifNil: [
			loginData at: location first ifAbsentPut: [
					(UIManager default request: 'User (', location first, ')')
						-> (UIManager default requestPassword: 'Password (', location first, ')')].
			repository := MCHttpRepository
					location: location first, location second
					user: (loginData at: location first) key
					password: (loginData at: location first) value.
			addDefault := true].
			
		addDefault ifTrue: [
			(MCPackage named: packageName) workingCopy repositoryGroup addRepository: repository]].