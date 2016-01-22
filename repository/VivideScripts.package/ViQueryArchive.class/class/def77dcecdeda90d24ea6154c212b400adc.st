definitions
def77dcecdeda90d24ea6154c212b400adc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:navi |
	Bag new in: [:histogram |
		navi allObjectsDo: [:obj |
			histogram add: obj class].
		histogram]]).
(#class -> ViQueryMapDefinition).
(#id -> #'77dcecde-da90-d24e-a615-4c212b400adc').
(#inputKind -> SystemNavigation).
(#mapType -> #each).
(#outputKind -> Bag).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:36:11 pm')})).
(#sourceCode -> '[:navi |
	Bag new in: [:histogram |
		navi allObjectsDo: [:obj |
			histogram add: obj class].
		histogram]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})