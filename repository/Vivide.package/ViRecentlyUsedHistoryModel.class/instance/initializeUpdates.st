initialization
initializeUpdates

	self connect: ViProfile active recentPackages signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Packages. #=.packages}.
	self connect: ViProfile active recentPackages signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Packages. #=.packages}.
	
	self connect: ViProfile active recentClasses signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Classes. #=.classes}.
	self connect: ViProfile active recentClasses signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Classes. #=.classes}.
	
	self connect: ViProfile active recentMethods signal: #objectAdded: toSelector: #addObject:inGroup:collection: pattern: {1. #=.#Methods. #=.methods}.
	self connect: ViProfile active recentMethods signal: #objectRemoved: toSelector: #removeObject:inGroup:collection: pattern: {1. #=.#Methods. #=.methods}.