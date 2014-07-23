*vivide
allMethods

	| methods |
	methods := OrderedCollection new.
	Class rootsOfTheWorld do: [:root | root withAllSubclassesDo: [:class |
		class isMeta ifFalse: [
			methods
				addAll: class methodDict values;
				addAll: class class methodDict values]]].
	
	self flag: #traits. "mt: Missing."
	
	^ methods