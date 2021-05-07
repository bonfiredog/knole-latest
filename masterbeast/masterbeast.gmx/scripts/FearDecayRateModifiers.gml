///FearDecayRateModifiers()

FearDecayMod = 0.0008 + (((0.006 * 3) / 100) * (100 - mCreatureController.Alive)) + (mDriveCollectionMaster.RitualInternalMod / 500) 

return FearDecayMod
