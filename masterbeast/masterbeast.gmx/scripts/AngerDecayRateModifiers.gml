///AngerDecayRateModifiers()

AngerDecayMod = 0.0004 + (((0.0004 * 3) / 100) * (100 - mCreatureController.Alive)) + (mDriveCollectionMaster.RitualInternalMod / 500)


return AngerDecayMod
