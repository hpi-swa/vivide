instance creation - OLD
use: someObjects in: script

	^ ViQueryFillStep new
		objects: someObjects;
		next: script asScript;
		yourself