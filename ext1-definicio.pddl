(define (domain reserves)
  (:requirements :strips :typing :adl :equality :fluents)
  (:types
    habitacio reserva
  )

  (:predicates
    (procesada ?reserva - reserva)
  )

  (:functions
    (capacitat ?hab - habitacio)
    (ultim-dia-ocupat ?hab - habitacio)
    (persones ?res - reserva)
    (principi ?res - reserva)
    (final ?res - reserva)
    (reserves-satisfetes)
  )

  (:action a-reservar
    :parameters (?res - reserva ?hab - habitacio)
    :precondition (and
      (not (procesada ?res))
      (>= (capacitat ?hab) (persones ?res))
      (> (principi ?res) (ultim-dia-ocupat ?hab))
    )
    :effect (and
      (procesada ?res)
      (increase
        (ultim-dia-ocupat ?hab)
        (- (final ?res) (ultim-dia-ocupat ?hab)))
      (increase (reserves-satisfetes) 1)
    )
  )
  
  (:action pasar
    :parameters (?res - reserva)
    :precondition (not (procesada ?res))
    :effect (procesada ?res)
  )
)