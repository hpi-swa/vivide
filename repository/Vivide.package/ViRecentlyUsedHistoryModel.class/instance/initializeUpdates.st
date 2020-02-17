initialization
initializeUpdates

	self connect: (VivideLight historyFor: #packages) signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Packages. #=.packages}.
	self connect: (VivideLight historyFor: #packages) signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Packages. #=.packages}.
	
	self connect: (VivideLight historyFor: #classes) signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Classes. #=.classes}.
	self connect: (VivideLight historyFor: #classes) signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Classes. #=.classes}.
	
	self connect: (VivideLight historyFor: #methods) signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Methods. #=.methods}.
	self connect: (VivideLight historyFor: #methods) signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Methods. #=.methods}.