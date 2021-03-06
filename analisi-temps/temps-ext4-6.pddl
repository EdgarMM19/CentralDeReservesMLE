(define (problem problema-h6-r6)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 hab5 - habitacio
             res0 res1 res2 res3 res4 res5 - reserva)
   (:init
         (= (capacitat hab0) 3)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 4)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 1)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 3)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 3)
         (= (ultim-dia-ocupada hab4) 0)
         (= (capacitat hab5) 2)
         (= (ultim-dia-ocupada hab5) 0)
         (= (persones res0) 2)
         (= (principi res0) 22)
         (= (final res0) 25)
         (= (persones res1) 3)
         (= (principi res1) 5)
         (= (final res1) 13)
         (= (persones res2) 1)
         (= (principi res2) 10)
         (= (final res2) 15)
         (= (persones res3) 1)
         (= (principi res3) 9)
         (= (final res3) 20)
         (= (persones res4) 1)
         (= (principi res4) 26)
         (= (final res4) 29)
         (= (persones res5) 3)
         (= (principi res5) 2)
         (= (final res5) 20)
         (= (reserves-no-satisfetes) 0)
         (= (habitacions-obertes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal  (and (forall (?res - reserva) (processada ?res)) (forall (?hab - habitacio) (decidida ?hab))))
   (:metric minimize (+ (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))) (* 1 (habitacions-obertes))))
)
