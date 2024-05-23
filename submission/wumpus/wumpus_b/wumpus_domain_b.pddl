(define (domain wumpus_domain_b)
    (:requirements :strips :typing :negative-preconditions :conditional-effects :existential-preconditions)
    (:types
        square what who
    )
    (:predicates
        (adj ?s1 - square ?s2 - square)
        (pit ?s - square)
        (wumpus ?s - square)
        (gold ?s - square)
        (breeze ?s - square)
        (stench ?s - square)
        (glitter ?s - square)
        (at ?a - who ?s - square)
        (have ?a - who ?w - what)
        (dead ?a - who)
        (visited ?s - square)
    )
    (:action move
        :parameters (?agent - who ?from - square ?to - square)
        :precondition (and
            (adj ?from ?to)
            (not (pit ?to))
            (at ?agent ?from)
            (not (dead ?agent))
            (not (wumpus ?to))
        )
        :effect (and
            (not (at ?agent ?from))
            (at ?agent ?to)
            (visited ?to)
            (when
                (pit ?to)
                (dead ?agent))
            (when
                (wumpus ?to)
                (dead ?agent))
            (when
                (exists (?adj - square)
                    (and (adj ?to ?adj) (gold ?adj)))
                (glitter ?to))
            (when
                (exists (?adj - square)
                    (and (adj ?to ?adj) (pit ?adj)))
                (breeze ?to))
            (when
                (exists (?adj - square)
                    (and (adj ?to ?adj) (wumpus ?adj)))
                (stench ?to))
        )
    )
    (:action take
        :parameters (?agent - who ?gold - what ?where - square)
        :precondition (and
            (at ?agent ?where)
            (exists (?adj - square)
                (and (adj ?where ?adj) (gold ?adj)))
            (not (dead ?agent))
        )
        :effect (and
            (have ?agent ?gold)
            (not (gold ?where))
        )
    )
    (:action shoot
        :parameters (?agent - who ?arrow - what ?from - square ?to - square)
        :precondition (and
            (have ?agent ?arrow)
            (at ?agent ?from)
            (adj ?from ?to)
            (wumpus ?to)
            (not (dead ?agent))
        )
        :effect (and
            (not (wumpus ?to))
            (not (have ?agent ?arrow))
        )
    )
)