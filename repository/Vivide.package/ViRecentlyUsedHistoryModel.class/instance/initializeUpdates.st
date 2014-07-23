initialization
initializeUpdates

	self connect: ViObjectHistory recentPackages signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Packages. #=.packages}.
	self connect: ViObjectHistory recentPackages signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Packages. #=.packages}.
	
	self connect: ViObjectHistory recentClasses signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Classes. #=.classes}.
	self connect: ViObjectHistory recentClasses signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Classes. #=.classes}.
	
	self connect: ViObjectHistory recentMethods signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Methods. #=.methods}.
	self connect: ViObjectHistory recentMethods signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Methods. #=.methods}.