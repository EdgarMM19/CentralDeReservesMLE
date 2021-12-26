(define (domain reserves)
  (:requirements :strips :typing :adl :equality :fluents)
  (:types habitacio reserva)

  (:predicates
    (processada ?reserva - reserva)
  )

  (:functions
    (capacitat ?hab - habitacio)
    (ultim-dia-ocupada ?hab - habitacio)
    (persones ?res - reserva)
    (principi ?res - reserva)
    (final ?res - reserva)
    (reserves-satisfetes)
  )

  (:action reservar
    :parameters (?res - reserva ?hab - habitacio)
    :precondition (and
      (not (processada ?res))
      (>= (capacitat ?hab) (persones ?res))
      (> (principi ?res) (ultim-dia-ocupada ?hab))
    )
    :effect (and
      (processada ?res)
      (increase
        (ultim-dia-ocupada ?hab)
        (- (final ?res) (ultim-dia-ocupada ?hab)))
      (increase (reserves-satisfetes) 1)
    )
  )

  (:action passar
    :parameters (?res - reserva)
    :precondition (not (processada ?res))
    :effect (processada ?res)
  )
)