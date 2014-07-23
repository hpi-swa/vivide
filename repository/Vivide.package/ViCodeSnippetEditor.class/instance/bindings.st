accessing
bindings

	^ {#self -> snippetEdit model doItReceiver},
		(snippetEdit model doItReceiver ifNil: [#()] ifNotNil: [:obj |
			obj class instVarNames withIndexCollect: [:nm :idx |
				nm -> (obj instVarAt: idx)]]),
		snippetEdit model bindings associations