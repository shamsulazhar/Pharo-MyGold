"
Database descriptors 
"
Class {
	#name : #MyGoldDescriptorSystem,
	#superclass : #DescriptorSystem,
	#category : #MyGold
}

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGMaybankGoldBullion: aClassModel [ 
aClassModel newAttributeNamed: #id;
newAttributeNamed: #timeStamp;
newAttributeNamed: #size;
newAttributeNamed: #sellingRM ;
newAttributeNamed: #buyingRM 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGMaybankGoldInvestmentAccount: aClassModel [ 
	aClassModel
		newAttributeNamed: #id;
		newAttributeNamed: #timeStamp;
		newAttributeNamed: #sellingRMPerGram;
		newAttributeNamed: #buyingRMPerGram 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGMaybankSilverInvestmentAccount: aClassModel [
	aClassModel
		newAttributeNamed: #id;
		newAttributeNamed: #timeStamp;
		newAttributeNamed: #sellingRMPerGram;
		newAttributeNamed: #buyingRMPerGram
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGPublicGoldClassicBungamasTaiFook24K: aClassModel [
self publicGoldDefaultClassModel: aClassModel 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGPublicGoldFlexibar24K: aClassModel [
self publicGoldDefaultClassModel: aClassModel 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGPublicGoldGoldBar24K: aClassModel [
self publicGoldDefaultClassModel: aClassModel 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGPublicGoldGoldJewellery22K: aClassModel [
	aClassModel
		newAttributeNamed: #id;
		newAttributeNamed: #timeStamp;
		newAttributeNamed: #weight;
		newAttributeNamed: #pgBuy
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGPublicGoldGoldWaferDinar22K: aClassModel [
self publicGoldDefaultClassModel: aClassModel 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGPublicGoldGoldWaferDinar24K: aClassModel [
self publicGoldDefaultClassModel: aClassModel 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGPublicGoldSilverBullion: aClassModel [
self publicGoldDefaultClassModel: aClassModel 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGPublicGoldSmallBarWafer24K: aClassModel [
	aClassModel
		newAttributeNamed: #id;
		newAttributeNamed: #timeStamp;
		newAttributeNamed: #weight;
		newAttributeNamed: #pgSell
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> classModelForMGUOBGoldBullion: aClassModel [
	aClassModel
		newAttributeNamed: #id;
		newAttributeNamed: #timeStamp;
		newAttributeNamed: #weight;
		newAttributeNamed: #goldType;
		newAttributeNamed: #wmBankSellingRM;
		newAttributeNamed: #bankBuying;
		newAttributeNamed: #emBankSellingRM
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGMaybankGoldBullion: aDescriptor [
	| table |
	table := self tableNamed: 'MAYBANK_GOLD_BULLION'.
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping)
		from: #timeStamp
		to: (table fieldNamed: 'timestamp').
	(aDescriptor newMapping: DirectMapping)
		from: #size
		to: (table fieldNamed: 'size').
	(aDescriptor newMapping: DirectMapping)
		from: #sellingRM
		to: (table fieldNamed: 'selling_rm').
	(aDescriptor newMapping: DirectMapping)
		from: #buyingRM
		to: (table fieldNamed: 'buying_rm')
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGMaybankGoldInvestmentAccount: aDescriptor [
	| table |
	table := self tableNamed: 'maybank_gold_investment_account' asUppercase.
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping)
		from: #timeStamp
		to: (table fieldNamed: 'timestamp').
	(aDescriptor newMapping: DirectMapping)
		from: #sellingRMPerGram
		to: (table fieldNamed: 'selling_rm_per_gram').
	(aDescriptor newMapping: DirectMapping)
		from: #buyingRMPerGram
		to: (table fieldNamed: 'buying_rm_per_gram')
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGMaybankSilverInvestmentAccount: aDescriptor [
	| table |
	table := self tableNamed: 'maybank_silver_investment_account' asUppercase .
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping)
		from: #timeStamp
		to: (table fieldNamed: 'timestamp').
	(aDescriptor newMapping: DirectMapping)
		from: #sellingRMPerGram
		to: (table fieldNamed: 'selling_rm_per_gram').
	(aDescriptor newMapping: DirectMapping)
		from: #buyingRMPerGram
		to: (table fieldNamed: 'buying_rm_per_gram')
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGPublicGoldClassicBungamasTaiFook24K: aDescriptor [
	self
		publicGoldDefaultDescriptor: aDescriptor
		tableName: 'public_gold_classic_bungamas_tai_fook_24k' asUppercase 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGPublicGoldFlexibar24K: aDescriptor [
	self
		publicGoldDefaultDescriptor: aDescriptor
		tableName: 'public_gold_flexibar_24k' asUppercase 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGPublicGoldGoldBar24K: aDescriptor [
	self
		publicGoldDefaultDescriptor: aDescriptor
		tableName: 'public_gold_gold_bar_24k' asUppercase 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGPublicGoldGoldJewellery22K: aDescriptor [
	| table |
	table := self tableNamed: 'public_gold_gold_jewellery_22k' asUppercase .
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping)
		from: #timeStamp
		to: (table fieldNamed: 'timestamp').
	(aDescriptor newMapping: DirectMapping)
		from: #weight
		to: (table fieldNamed: 'weight').
	(aDescriptor newMapping: DirectMapping)
		from: #pgBuy
		to: (table fieldNamed: 'pg_buy')
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGPublicGoldGoldWaferDinar22K: aDescriptor [
	self
		publicGoldDefaultDescriptor: aDescriptor
		tableName: 'public_gold_gold_wafer_dinar_22k' asUppercase 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGPublicGoldGoldWaferDinar24K: aDescriptor [
	self
		publicGoldDefaultDescriptor: aDescriptor
		tableName: 'public_gold_gold_wafer_dinar_24k' asUppercase 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGPublicGoldSilverBullion: aDescriptor [
	self
		publicGoldDefaultDescriptor: aDescriptor
		tableName: 'public_gold_silver_bullion' asUppercase 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGPublicGoldSmallBarWafer24K: aDescriptor [
	| table |
	table := self tableNamed: 'public_gold_small_bar_wafer_24k' asUppercase .
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping)
		from: #timeStamp
		to: (table fieldNamed: 'timestamp').
	(aDescriptor newMapping: DirectMapping)
		from: #weight
		to: (table fieldNamed: 'weight').
	(aDescriptor newMapping: DirectMapping)
		from: #pgSell
		to: (table fieldNamed: 'pg_sell')
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> descriptorForMGUOBGoldBullion: aDescriptor [
	| table |
	table := self tableNamed: 'uob_gold_bullion' asUppercase .
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping)
		from: #timeStamp
		to: (table fieldNamed: 'timestamp').
	(aDescriptor newMapping: DirectMapping)
		from: #weight
		to: (table fieldNamed: 'weight').
	(aDescriptor newMapping: DirectMapping)
		from: #goldType
		to: (table fieldNamed: 'gold_type').
	(aDescriptor newMapping: DirectMapping)
		from: #wmBankSellingRM
		to: (table fieldNamed: 'wm_bank_selling_rm').
	(aDescriptor newMapping: DirectMapping)
		from: #bankBuying
		to: (table fieldNamed: 'bank_buying').
	(aDescriptor newMapping: DirectMapping)
		from: #emBankSellingRM
		to: (table fieldNamed: 'em_bank_selling_rm')
]

{ #category : #helpers }
MyGoldDescriptorSystem >> publicGoldDefaultClassModel: aClassModel [ 
	aClassModel
		newAttributeNamed: #id;
		newAttributeNamed: #timeStamp;
		newAttributeNamed: #weight;
		newAttributeNamed: #pgSell;
		newAttributeNamed: #pgBuy
]

{ #category : #helpers }
MyGoldDescriptorSystem >> publicGoldDefaultDescriptor: aDescriptor tableName: aTableName [
	| table |
	table := self tableNamed: aTableName .
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping)
		from: #timeStamp
		to: (table fieldNamed: 'timestamp').
	(aDescriptor newMapping: DirectMapping)
		from: #weight
		to: (table fieldNamed: 'weight').
	(aDescriptor newMapping: DirectMapping)
		from: #pgSell
		to: (table fieldNamed: 'pg_sell').
	(aDescriptor newMapping: DirectMapping)
		from: #pgBuy
		to: (table fieldNamed: 'pg_buy')
]

{ #category : #helpers }
MyGoldDescriptorSystem >> publicGoldDefaultTable: aTable [ 
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'timestamp' type: platform timestamp.
	aTable createFieldNamed: 'weight' type: platform text.
	aTable createFieldNamed: 'pg_sell' type: platform text.
	aTable createFieldNamed: 'pg_buy' type: platform text
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForMAYBANK_GOLD_BULLION: aTable [
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'timestamp' type: platform timestamp.
		aTable createFieldNamed: 'size' type: platform text.
		aTable createFieldNamed: 'selling_rm' type: platform text.
		aTable createFieldNamed: 'buying_rm' type: platform text.
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForMAYBANK_GOLD_INVESTMENT_ACCOUNT: aTable [
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'timestamp' type: platform timestamp.
	aTable createFieldNamed: 'selling_rm_per_gram' type: platform text.
	aTable createFieldNamed: 'buying_rm_per_gram' type: platform text
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForMAYBANK_SILVER_INVESTMENT_ACCOUNT: aTable [
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'timestamp' type: platform timestamp.
	aTable createFieldNamed: 'selling_rm_per_gram' type: platform text.
	aTable createFieldNamed: 'buying_rm_per_gram' type: platform text
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForPUBLIC_GOLD_CLASSIC_BUNGAMAS_TAI_FOOK_24K: aTable [
self publicGoldDefaultTable: aTable 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForPUBLIC_GOLD_FLEXIBAR_24K: aTable [
self publicGoldDefaultTable: aTable 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForPUBLIC_GOLD_GOLD_BAR_24K: aTable [
self publicGoldDefaultTable: aTable 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForPUBLIC_GOLD_GOLD_JEWELLERY_22K: aTable [
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'timestamp' type: platform timestamp.
	aTable createFieldNamed: 'weight' type: platform text.
	
	aTable createFieldNamed: 'pg_buy' type: platform text
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForPUBLIC_GOLD_GOLD_WAFER_DINAR_22K: aTable [
self publicGoldDefaultTable: aTable 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForPUBLIC_GOLD_GOLD_WAFER_DINAR_24K: aTable [
self publicGoldDefaultTable: aTable 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForPUBLIC_GOLD_SILVER_BULLION: aTable [
self publicGoldDefaultTable: aTable 
]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForPUBLIC_GOLD_SMALL_BAR_WAFER_24K: aTable [
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'timestamp' type: platform timestamp.
	aTable createFieldNamed: 'weight' type: platform text.
	aTable createFieldNamed: 'pg_sell' type: platform text.

]

{ #category : #descriptors }
MyGoldDescriptorSystem >> tableForUOB_GOLD_BULLION: aTable [
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'timestamp' type: platform timestamp.
	aTable createFieldNamed: 'weight' type: platform text.
	aTable createFieldNamed: 'gold_type' type: platform text.
	aTable createFieldNamed: 'wm_bank_selling_rm' type: platform text.
	aTable createFieldNamed: 'bank_buying' type: platform text.
	aTable createFieldNamed: 'em_bank_selling_rm' type: platform text
]
