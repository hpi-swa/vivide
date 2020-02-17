*vivide
allFrom: repo for: filter
	"MCVersion allFrom: MCRepository inbox for: '-ct.'"
	
	| cache |
	cache := MCRepository packageCache.

	^ repo allVersionNames
		select: [:nm | nm includesSubstring: filter]
		thenCollect: [:nm | 
			(cache versionNamed: nm, '.mcz') ifNil: [repo versionNamed: nm, '.mcz']]