///HappyDecayRateModifiers()


HappyDecayMod = 0.0002 - (((0.0002 * 0.5) / 100) * (100 - mCreatureController.Alive)) - (mDriveCollectionMaster.RitualInternalMod / 20000)

return HappyDecayMod
