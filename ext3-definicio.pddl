(define (domain reserves)
  (:requirements :strips :typing :adl :equality :fluents)
  (:types habitacio reserva)

  (:predicates 
    (processada ?reserva - reserva)
  )

  (:functions
    (capacitat ?hab - habitacio)
    (ultim-dia-ocupat ?hab - habitacio)
    (persones ?res - reserva)
    (principi ?res - reserva)
    (final ?res - reserva)
    (reserves-no-satisfetes)
    (desaprofitament-places)
  )

  (:action a-reservar
    :parameters (?res - reserva ?hab - habitacio)
    :precondition (and 
      (not (processada ?res))
      (>= (capacitat ?hab) (persones ?res))
      (> (principi ?res) (ultim-dia-ocupat ?hab))
    )
    :effect (and
      (processada ?res)
      (increase (ultim-dia-ocupat ?hab) (- (final ?res) (ultim-dia-ocupat ?hab)))
      (increase (desaprofitament-places) (* (- (+ 1 (final ?res)) (principi ?res)) (- (capacitat ?hab) (persones ?res))))
    )  
  )

  (:action pasar
    :parameters (?res - reserva)
    :precondition (not (processada ?res))
    :effect (and 
      (processada ?res)
      (increase (reserves-no-satisfetes) 1) 
    )
  )
)
