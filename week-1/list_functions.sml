fun list_sum(xs : int list) =
    if null xs
    then 0
    else hd(xs) + list_sum(tl(xs))

fun list_product(xs : int list) =
    if null xs
    then 1
    else hd(xs) * list_product(tl(xs))

fun countdown(x : int) = (* [7,6,5,4,3,2,1] *)
    if x = 0
    then []
    else x :: countdown(x - 1)

fun append(xs : int list, ys : int list) =
    if null xs
    then ys
    else (hd xs) :: append((tl xs), ys)

fun list_sum_pair(xs : (int * int) list) =
    if null xs
    then 0
    else #1(hd xs) + #2(hd xs) + list_sum_pair((tl xs))