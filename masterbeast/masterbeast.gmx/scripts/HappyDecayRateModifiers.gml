///HappyDecayRateModifiers()


HappyDecayMod = 0.002 - (((0.002 * 0.5) / 100) * (100 - mCreatureController.Alive)) - (mDriveCollectionMaster.RitualInternalMod / 20000)

return HappyDecayMod
