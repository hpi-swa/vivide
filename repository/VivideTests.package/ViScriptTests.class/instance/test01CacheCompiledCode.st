tests - script definition
test01CacheCompiledCode
	"A script definition caches the complied code as (clean) block."
	
	| def cache |
	def := ViScriptDefinition new.
	def sourceCode: '[:in :out | out addAll: in]'.

	self
		assert: def block isBlock;
		assert: def block == def block.
	
	cache := def block.

	def sourceCode: '[:in :out | out addAll: in]'. "Does not reset the cache."
	self assert: def block == cache.
	def sourceCode: '[:in :out | out addAll: in asSet]'. "Resets the cache."
	self deny: def block == cache.	