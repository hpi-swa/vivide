instance creation - OLD
use: someObjects in: aQueryOrId

	^ ViQueryFillStep new
		objects: someObjects;
		next: (self convert: aQueryOrId);
		yourself