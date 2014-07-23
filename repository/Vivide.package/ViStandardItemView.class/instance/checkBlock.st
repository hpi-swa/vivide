finder
checkBlock
	"Searches all visible properties of a node for the given text."

	| searchToken |
	searchToken := self searchEdit theText asString.
	^ [:node | node properties anySatisfy: [:prop |
			(prop endsWith: #ext) "balloonText and text" and: [ 
				(node at: prop) asString
					includesSubstring: searchToken
					caseSensitive: false]]]