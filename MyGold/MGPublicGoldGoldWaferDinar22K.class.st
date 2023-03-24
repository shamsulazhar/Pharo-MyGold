Class {
	#name : #MGPublicGoldGoldWaferDinar22K,
	#superclass : #MGPublicGoldGoldWaferDinar,
	#category : #MyGold
}

{ #category : #constants }
MGPublicGoldGoldWaferDinar22K class >> priceTableKey: aDictionary [
	^ aDictionary keys
		detect: [ :key | 
			| value |
			value := aDictionary at: key.
			value size = 2
				and: [ ((value at: 1) at: 1) = 'Dinar'
						and: [ ((value at: 2) at: 1) = '1 Dinar' ] ] ]
]
