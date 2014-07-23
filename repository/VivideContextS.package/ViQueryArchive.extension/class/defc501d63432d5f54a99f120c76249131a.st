*VivideContextS-definitions
defc501d63432d5f54a99f120c76249131a
	<definition>

	^ ((Dictionary new) add: (#inputKind->ByteSymbol); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 May 2014 11:45:02 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'c501d634-32d5-f54a-99f1-20c76249131a'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:layerName | (#(#deactivateLayerInCurrentProcess #deactivateLayersInCurrentProcess )
		gather: [:message | SystemNavigation default allCallsOn: message])
		select: [:ref | ref compiledMethod literalStrings includes: layerName]]'); add: (#mapType->#each); add: (#block->[:layerName | (#(#deactivateLayerInCurrentProcess #deactivateLayersInCurrentProcess )
		gather: [:message | SystemNavigation default allCallsOn: message])
		select: [:ref | ref compiledMethod literalStrings includes: layerName]]); yourself)