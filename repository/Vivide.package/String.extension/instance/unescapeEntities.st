*vivide-queries
unescapeEntities
	^ self copyWithRegex: '&#*\w*\d*;' matchesTranslatedUsing: [:match | (Dictionary newFrom: {'&lt;' -> '<'. '&gt;' -> '>'. '&amp;' -> '&'. '&quot;' -> '"'. '&apos;' -> ''''. '&#39;' -> ''''}) at: match ifAbsent: [match]].