///CreateNostril(Type)

NostrilType = argument0

MyNostril = instance_create(x,y,NostrilType)
MyNostril.Parent = self.id
MyNostril.image_xscale = 0.25
MyNostril.image_yscale = 0.25
MyNostril.OriginalX = MyNostril.x
MyNostril.OriginalY = MyNostril.y
MyNostril.OriginalXScale = MyNostril.image_xscale
MyNostril.OriginalYScale = MyNostril.image_yscale
