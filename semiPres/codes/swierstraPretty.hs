type FormatSet = [Format]

dtf :: Int -> Doc -> FormatSet
dtf w (d1 `Beside` d2) = cross fmtBeside w d1 d2
dtf w (d1 `Above`  d2) = cross fmtAbove  w d1 d2

dtf w (Nest i d) = fmtListNest i $ dtf (w-i) d
dtf w (Text s) | length s < w = [strToFmt s]
               | otherwise    = []

dtf w (Choice d1 d2) = dtf w d1 ++ dtf w d2

pretty :: Int -> Doc -> String
pretty w d = best $ dtf w d
