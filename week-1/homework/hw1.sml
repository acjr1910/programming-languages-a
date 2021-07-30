(* Data Definitions *)

(* Date is (int * int * int), where: *)
(* (#1 date) is year *)
(* (#2 date) is month *)
(* (#3 date) is day *)

(* 1 - Write a function is_older that takes two dates and evaluates to true or false. It evaluates to true if the first argument is a date that comes before the second argument. (If the two dates are the same, the result is false.) *)
fun is_older(dt1 : int*int*int, dt2: int*int*int) =
    if (#1 dt1) > (#1 dt2)
    then false
    else if (#2 dt1) > (#2 dt2)
         then false
         else if (#3 dt1) > (#3 dt2)
              then false
              else true

(* 2 - Write a function number_in_month that takes a list of dates and a month (i.e., an int) and returns how many dates in the list are in the given month. *)
fun number_in_month(lod: (int * int * int) list, month: int) =
     if (null lod)
     then 0
     else 
          let val match = (#2 (hd lod)) = month
          in
            if match
            then 1 + number_in_month(tl lod, month)
            else number_in_month(tl lod, month)
          end

(* 3. Write a function number_in_months that takes a list of dates and a list of months (i.e., an int list) and returns the number of dates in the list of dates that are in any of the months in the list of months. Assume the list of months has no number repeated. Hint: Use your answer to the previous problem. *)
fun number_in_months(lod: (int * int * int) list, lom: int list) =
     if null lom
     then 0
     else number_in_month(lod, hd lom) + number_in_months(lod, tl lom)

(* 4. Write a function dates_in_month that takes a list of dates and a month (i.e., an int) and returns a list holding the dates from the argument list of dates that are in the month. The returned list should contain dates in the order they were originally given. *)
fun dates_in_month(lod: (int * int * int) list, month: int) =
     if null lod
     then []
     else 
          let val match = (#2 (hd lod)) = month
          in
            if match
            then hd lod :: dates_in_month(tl lod, month)
            else dates_in_month(tl lod, month)
          end

(* 5. Write a function dates_in_months that takes a list of dates and a list of months (i.e., an int list) and returns a list holding the dates from the argument list of dates that are in any of the months in the list of months. Assume the list of months has no number repeated. Hint: Use your answer to the previous problem and SML’s list-append operator (@). *)

fun dates_in_months(lod: (int * int * int) list,  lom: int list) =
     if null lom
     then []
     else dates_in_month(lod, hd lom) @ dates_in_months(lod, tl lom)
          
(* 6. Write a function get_nth that takes a list of strings and an int n and returns the nth element of the list where the head of the list is 1st. Do not worry about the case where the list has too few elements: your function may apply hd or tl to the empty list in this case, which is okay. *)
 
 fun get_nth(los: string list, n: int) =
     if n = 1
     then hd los
     else get_nth(tl los, n - 1)
