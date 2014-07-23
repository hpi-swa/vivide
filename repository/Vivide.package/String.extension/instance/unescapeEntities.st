*vivide-queries
unescapeEntities
	^ self copyWithRegex: '&\w*;' matchesTranslatedUsing: [:match | (Dictionary newFrom: {'&lt;' -> '<'. '&gt;' -> '>'. '&amp;' -> '&'. '&quot;' -> '"'. '&apos;' -> ''''}) at: match ifAbsent: [match]].