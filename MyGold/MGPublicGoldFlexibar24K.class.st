Class {
	#name : #MGPublicGoldFlexibar24K,
	#superclass : #MGPublicGoldProductGroup,
	#category : #MyGold
}

{ #category : #constants }
MGPublicGoldFlexibar24K class >> priceTableKey: aDictionary [
	^ aDictionary keys
		detect: [ :key | 
			| value |
			value := aDictionary at: key.
			value size = 2
				and: [ ((value at: 1) at: 1) = 'Weight'
						and: [ ((value at: 2) at: 1) = '50 gram' ] ] ]
]
