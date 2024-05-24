(define (problem wumpus_problem_b)
    (:domain wumpus_domain_b)
    (:objects
        sq-1-1 sq-1-2 sq-1-3 sq-1-4 sq-2-1 sq-2-2 sq-2-3 sq-2-4 sq-3-1 sq-3-2 sq-3-3 sq-3-4 sq-4-1 sq-4-2 sq-4-3 sq-4-4 - square
        the-gold the-arrow - what
        agent - who
    )
    (:init
        ; Adjacency definitions
        (adj sq-1-1 sq-1-2)
        (adj sq-1-2 sq-1-1)
        (adj sq-1-2 sq-1-3)
        (adj sq-1-3 sq-1-2)
        (adj sq-1-3 sq-1-4)
        (adj sq-1-4 sq-1-3)
        (adj sq-2-1 sq-2-2)
        (adj sq-2-2 sq-2-1)
        (adj sq-2-2 sq-2-3)
        (adj sq-2-3 sq-2-2)
        (adj sq-2-3 sq-2-4)
        (adj sq-2-4 sq-2-3)
        (adj sq-3-1 sq-3-2)
        (adj sq-3-2 sq-3-1)
        (adj sq-3-2 sq-3-3)
        (adj sq-3-3 sq-3-2)
        (adj sq-3-3 sq-3-4)
        (adj sq-3-4 sq-3-3)
        (adj sq-4-1 sq-4-2)
        (adj sq-4-2 sq-4-1)
        (adj sq-4-2 sq-4-3)
        (adj sq-4-3 sq-4-2)
        (adj sq-4-3 sq-4-4)
        (adj sq-4-4 sq-4-3)
        (adj sq-1-1 sq-2-1)
        (adj sq-2-1 sq-1-1)
        (adj sq-2-1 sq-3-1)
        (adj sq-3-1 sq-2-1)
        (adj sq-3-1 sq-4-1)
        (adj sq-4-1 sq-3-1)
        (adj sq-1-2 sq-2-2)
        (adj sq-2-2 sq-1-2)
        (adj sq-2-2 sq-3-2)
        (adj sq-3-2 sq-2-2)
        (adj sq-3-2 sq-4-2)
        (adj sq-4-2 sq-3-2)
        (adj sq-1-3 sq-2-3)
        (adj sq-2-3 sq-1-3)
        (adj sq-2-3 sq-3-3)
        (adj sq-3-3 sq-2-3)
        (adj sq-3-3 sq-4-3)
        (adj sq-4-3 sq-3-3)
        (adj sq-1-4 sq-2-4)
        (adj sq-2-4 sq-1-4)
        (adj sq-2-4 sq-3-4)
        (adj sq-3-4 sq-2-4)
        (adj sq-3-4 sq-4-4)
        (adj sq-4-4 sq-3-4)

        ; Gold
        (gold sq-2-3)

        ; / ------------- This problem contains two scenarios ------------- /

        ; Initial problem
        (pit sq-3-1)
        (pit sq-4-4)

        ; Toggle to change the initial state
        ; Include these to force a confrontation with the wumpus
        ; (pit sq-2-1)
        ; (pit sq-2-2)

        ; Starting points and props
        (at agent sq-1-1)
        (have agent the-arrow)
        (wumpus sq-1-3)
    )
    (:goal
        (and
            (at agent sq-1-1)
            (have agent the-gold)
            (not (dead agent))
        )
    )
)