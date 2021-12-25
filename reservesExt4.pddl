(define (domain reserves)
  (:requirements :strips :typing :adl :equality :fluents)
  (:types habitacio reserva)
  (:predicates 
    (procesada ?reserva - reserva)
    (decidir ?habitacio - habitacio)
    (oberta ?habitacio - habitacio)
  )

  (:functions
    (capacitat ?hab - habitacio)
    (ultim-dia-ocupat ?hab - habitacio)
    (persones ?res - reserva)
    (principi ?res - reserva)
    (final ?res - reserva)
    (reserves-no-satisfetes)
    (desperdici-places)
    (habitacions-obertes)
  )


  (:action a-reservar
    :parameters (?res - reserva ?hab - habitacio)
    :precondition (and 
        (not (procesada ?res))
        (>= (capacitat ?hab) (persones ?res))
        (> (principi ?res) (ultim-dia-ocupat ?hab))
        (oberta ?hab)
      )
    :effect (and
      (procesada ?res)
      (increase (ultim-dia-ocupat ?hab) (- (final ?res) (ultim-dia-ocupat ?hab)))
      (increase (desperdici-places) (* (- (+ 1 (final ?res)) (principi ?res)) (- (capacitat ?hab) (persones ?res))))
    )  
  )

  (:action pasar
    :parameters (?res - reserva)
    :precondition ( not (procesada ?res) )
    :effect (and 
              ( procesada ?res )  
              (increase (reserves-no-satisfetes) 1) 
            )
  )

  (:action tancar-hab
    :parameters (?hab - habitacio)
    :precondition (decidir ?hab)
    :effect (and (not (decidir ?hab)))
  )
  (:action obrir-hab
    :parameters (?hab - habitacio)
    :precondition (decidir ?hab)
    :effect (and (oberta ?hab) (not (decidir ?hab)) (increase (habitacions-obertes) 1))
  )


 )
