*vivide-artifacts-support
receiversSortedByCall
	"Sort receivers by code-related call order. Just a guess."

	| literals |
	literals := self clientMethod literals select: [:lit | lit isSymbol].
	^ self receivers sorted: [:t1 :t2 |
		(literals indexOf: t1 clientSelector) <= (literals indexOf: t2 clientSelector)]