///FearDecayRateModifiers()

FearDecayMod = 0.006 + (((0.006 * 3) / 100) * (100 - mCreatureController.Alive)) + (mDriveCollectionMaster.RitualInternalMod / 500) 

return FearDecayMod
