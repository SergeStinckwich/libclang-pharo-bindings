Extension { #name : #CXStringStruct }

{ #category : #'*libclang-core' }
CXStringStruct >> asString [
	^ CXIndexH uniqueInstance getCString: self

]

{ #category : #'*libclang-core' }
CXStringStruct >> autoRelease [
    self class finalizationRegistry add: self
]

{ #category : #'*libclang-core' }
CXStringStruct >> disposeString [
	CXIndexH uniqueInstance disposeString: self
]
