(define (domain minecraft_domain_b)
    (:requirements :strips :typing :negative-preconditions)
    (:types
        moveable static agent
    )
    (:predicates
        (islog ?arg0 - moveable)
        (isplanks ?arg0 - moveable)
        (at ?arg0 - moveable ?arg1 - static)
        (agentat ?arg0 - static)
        (inventory ?arg0 - moveable)
        (equipped ?arg0 - moveable ?arg1 - agent)
        (handsfree ?arg0 - agent)
        (recall ?arg0 - moveable)
        (adjacent ?loc1 ?loc2 - static)
    )

    (:action recall
        :parameters (?var0 - moveable ?var1 - agent)
        :precondition (and
            (inventory ?var0)
            (handsfree ?var1)
        )
        :effect (and
            (recall ?var0)
            (not (inventory ?var0))
        )
    )

    (:action move
        :parameters (?var0 - static ?var1 - static ?var2 - agent)
        :precondition (and
            (agentat ?var1)
            (adjacent ?var1 ?var0)
            (not (agentat ?var0))
        )
        :effect (and
            (agentat ?var0)
            (not (agentat ?var1))
        )
    )

    (:action craftplanks
        :parameters (?var0 - moveable ?var1 - agent)
        :precondition (and
            (islog ?var0)
            (equipped ?var0 ?var1)
        )
        :effect (and
            (isplanks ?var0)
            (not (islog ?var0))
            (not (equipped ?var0 ?var1))
            (handsfree ?var1)
        )
    )

    (:action equip
        :parameters (?var0 - moveable ?var1 - agent)
        :precondition (and
            (recall ?var0)
            (handsfree ?var1)
        )
        :effect (and
            (equipped ?var0 ?var1)
            (not (handsfree ?var1))
            (not (recall ?var0))
        )
    )

    (:action pick
        :parameters (?var0 - moveable ?var1 - static ?var2 - agent)
        :precondition (and
            (at ?var0 ?var1)
            (agentat ?var1)
            (handsfree ?var2)
        )
        :effect (and
            (inventory ?var0)
            (not (at ?var0 ?var1))
        )
    )
)
