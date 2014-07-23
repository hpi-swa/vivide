listening
notifyChangedResults

	self model objects "results" in: [:objects |
		self listenersForResults do: [:msg |
			msg valueWithArguments: {objects.self}]].