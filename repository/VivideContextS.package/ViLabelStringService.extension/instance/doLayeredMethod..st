*vividecontexts
doLayeredMethod: layeredMethod

	^ '<i>', layeredMethod selector, ' ', layeredMethod allInvolvedLayers asArray asString, '</i>' 