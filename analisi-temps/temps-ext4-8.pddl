(define (problem problema-h8-r8)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 hab5 hab6 hab7 - habitacio
             res0 res1 res2 res3 res4 res5 res6 res7 - reserva)
   (:init
         (= (capacitat hab0) 3)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 4)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 4)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 1)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 3)
         (= (ultim-dia-ocupada hab4) 0)
         (= (capacitat hab5) 1)
         (= (ultim-dia-ocupada hab5) 0)
         (= (capacitat hab6) 4)
         (= (ultim-dia-ocupada hab6) 0)
         (= (capacitat hab7) 1)
         (= (ultim-dia-ocupada hab7) 0)
         (= (persones res0) 4)
         (= (principi res0) 8)
         (= (final res0) 16)
         (= (persones res1) 3)
         (= (principi res1) 13)
         (= (final res1) 27)
         (= (persones res2) 4)
         (= (principi res2) 1)
         (= (final res2) 4)
         (= (persones res3) 3)
         (= (principi res3) 15)
         (= (final res3) 18)
         (= (persones res4) 4)
         (= (principi res4) 6)
         (= (final res4) 18)
         (= (persones res5) 2)
         (= (principi res5) 4)
         (= (final res5) 11)
         (= (persones res6) 2)
         (= (principi res6) 6)
         (= (final res6) 25)
         (= (persones res7) 3)
         (= (principi res7) 29)
         (= (final res7) 30)
         (= (reserves-no-satisfetes) 0)
         (= (habitacions-obertes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal  (and (forall (?res - reserva) (processada ?res)) (forall (?hab - habitacio) (decidida ?hab))))
   (:metric minimize (+ (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))) (* 1 (habitacions-obertes))))
)
