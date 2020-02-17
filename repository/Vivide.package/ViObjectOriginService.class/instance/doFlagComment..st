vivide - other
doFlagComment: aFlagComment

	^ aFlagComment reference classSymbol, (aFlagComment reference classIsMeta ifTrue: [ ' class' ] ifFalse: ['']), ' #',aFlagComment reference methodSymbol