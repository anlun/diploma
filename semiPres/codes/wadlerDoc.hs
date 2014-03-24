data Doc = Doc `Beside` Doc
         | Nest Int Doc
         | Text String
         | Line -- '\n' or ' '
         | Doc :<|> Doc

x <> y   = x `Beside` y
nest i x = Nest i x
text s   = Text s
line     = Line
group  x = flatten x :<|> x

pretty :: Int -> Doc -> String
