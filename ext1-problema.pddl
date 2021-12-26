(define (problem reserves-habitacions)
  (:domain reserves)
  (:objects hab1 hab2 hab3 hab4 - habitacio
            res1 res2 res3 res4 res5 res6 - reserva)
  (:init (= (capacitat hab1) 1)
         (= (ultim-dia-ocupada hab1) 0)

         (= (capacitat hab2) 2)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 3)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 4)
         (= (ultim-dia-ocupada hab4) 0)

         (= (persones res1) 1)
         (= (principi res1) 1)
         (= (final res1) 29)

         (= (persones res2) 2)
         (= (principi res2) 4)
         (= (final res2) 10)

         (= (persones res3) 3)
         (= (principi res3) 11)
         (= (final res3) 15)

         (= (persones res4) 4)
         (= (principi res4) 20)
         (= (final res4) 22)

         (= (persones res5) 3)
         (= (principi res5) 16)
         (= (final res5) 19)


         (= (persones res6) 4)
         (= (principi res6) 1)
         (= (final res6) 30)

         (= (reserves-satisfetes) 0)
  )
  
  (:goal (forall (?res - reserva) (processada ?res)))
  
  (:metric maximize (reserves-satisfetes))
)
