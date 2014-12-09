searching
startSearch

	| pattern tokens |
	self stopIterator.
	
	pattern := self theText asString.
	tokens := pattern findTokens: Character space.
	
	tokens
		ifEmpty: [^ self clearResults]
		ifNotEmpty: [resultList model removeAllGroups; addDefaultGroup].
	
	resultList helpText: 'Looking for objects...'.
	self showResults.
	
	pattern last = Character space
		ifTrue: [tokens := tokens, #('') "match all"].
	
	tokens size == 1 ifTrue: [
		^ self searchLocals: tokens first].
	
	tokens first asLowercase = 'c'
		ifTrue: [tokens size >= 4
			ifTrue: [tokens third asLowercase = 'p'
				ifTrue: [^ self searchClasses: tokens second inPackages: tokens fourth]]
			ifFalse: [	^ self searchClasses: tokens second]].
		
	tokens first asLowercase = 'm'
		ifTrue: [tokens size >= 4
			ifTrue: [
				tokens third asLowercase = 'c' ifTrue: [^ self searchMethods: tokens second inClasses: tokens fourth].
				tokens third asLowercase = 'p' ifTrue: [^ self searchMethods: tokens second inPackages: tokens fourth]]
			ifFalse: [^ self searchMethods: tokens second]].
		
	tokens first = '.'
		ifTrue: [^ self searchLocals: tokens second].
	
	tokens first = ','
		ifTrue: [^ self searchRecentChanges: tokens second].
		
	"tokens first asLowercase = 'i'
		ifTrue: [^ self searchImplementors: tokens second]."
		
	tokens first asLowercase = 's'
		ifTrue: [^ self searchSenders: tokens second].
		
	tokens first asLowercase = 'p'
		ifTrue: [^ self searchPackages: tokens second].
		
	tokens first asLowercase = 'x'
		ifTrue: [^ self searchFlags: tokens second].

	tokens first asLowercase = 'q'
		ifTrue: [^ self searchQueries: tokens second].
		
	tokens first asLowercase = 't'
		ifTrue: [^ self searchTraits: tokens second].

	tokens := tokens reject: [:token | token isEmpty].
	
	tokens size == 1 ifTrue: [
		^ self searchLocals: tokens first].
	
	tokens first asLowercase = 'f'
		ifTrue: [^ self searchSourceString: tokens allButFirst].		

	tokens first asLowercase = 'l'
		ifTrue: [^ self searchLiteralString: tokens allButFirst].

	
