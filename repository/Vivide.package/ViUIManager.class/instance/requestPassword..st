as yet unclassified
requestPassword: queryString

	| object |
	object := ViPane new
		currentQuery: {#defaultProperties -> {
			#view -> ViLineEdit.
			#help -> queryString.
			#disguise -> true. "password"
			#autoAccept -> false}} asScript;
		objects: '';
		chooseObject.
	^ object