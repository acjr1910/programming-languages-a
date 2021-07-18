fun is_older(dt1 : int*int*int, dt2: int*int*int) =
    if (#1 dt1) > (#1 dt2)
    then false
    else if (#2 dt1) > (#2 dt2)
         then false
         else if (#3 dt1) >= (#3 dt2)
              then false
              else true

