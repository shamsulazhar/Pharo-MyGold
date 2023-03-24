Class {
	#name : #MGPublicGoldGoldWaferDinar24K,
	#superclass : #MGPublicGoldGoldWaferDinar,
	#category : #MyGold
}

{ #category : #constants }
MGPublicGoldGoldWaferDinar24K class >> priceTableKey: aDictionary [
	^ aDictionary keys
		detect: [ :key | 
			| value |
			value := aDictionary at: key.
			value size = 4
				and: [ ((value at: 1) at: 1) = 'Dinar'
						and: [ ((value at: 2) at: 1) = '1 Dinar'
								and: [ ((value at: 3) at: 1) = '5 Dinar'
										and: [ ((value at: 4) at: 1) = '10 Dinar'
												 ] ] ] ] ]
]
