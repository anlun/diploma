data Doc = Doc `Beside` Doc
         | Doc `Above`  Doc
         | Nest Int Doc
         | Text String
         | Doc `Choice` Doc

x <> y       = x `Beside` y
x $$ y       = x `Above`  y
nest i x     = Nest i x
text s       = Text s
x `choice` y = x `Choice` y
