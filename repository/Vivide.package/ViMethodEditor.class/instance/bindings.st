accessing
bindings

	^ {#self -> self artifact model doItReceiver},
		(self artifact model doItReceiver ifNil: [#()] ifNotNil: [:obj |
			obj class instVarNames withIndexCollect: [:nm :idx |
				nm -> (obj instVarAt: idx)]]),
		self artifact model bindings