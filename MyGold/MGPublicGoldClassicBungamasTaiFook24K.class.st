Class {
	#name : #MGPublicGoldClassicBungamasTaiFook24K,
	#superclass : #MGPublicGoldProductGroup,
	#category : #MyGold
}

{ #category : #constants }
MGPublicGoldClassicBungamasTaiFook24K class >> priceTableKey: aDictionary [
	^ aDictionary keys
		detect: [ :key | 
			| value |
			value := aDictionary at: key.
			value size = 5
				and: [ ((value at: 1) at: 1) = 'Weight'
						and: [ ((value at: 2) at: 1) = '10 gram'
								and: [ ((value at: 3) at: 1) = '20 gram'
										and: [ ((value at: 4) at: 1) = '50 gram'
												and: [ ((value at: 5) at: 1) = '100 gram' ] ] ] ] ] ]
]
