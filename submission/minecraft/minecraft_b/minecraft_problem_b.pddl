(define (problem minecraft_problem_b)
    (:domain minecraft_domain_b)

    (:objects
        grass-0 grass-1 log-2 - moveable
        agent - agent
        loc-0-0 loc-0-1 loc-0-2 loc-0-3 loc-1-0 loc-1-1 loc-1-2 loc-1-3 loc-2-0 loc-2-1 loc-2-2 loc-2-3 loc-3-0 loc-3-1 loc-3-2 loc-3-3 - static
    )

    (:init
        (islog log-2)

        ; Toggle to change the initial state
        ; Initial problem
        (at grass-0 loc-2-2)
        (at grass-1 loc-0-0)
        (at log-2 loc-3-0)

        ; Alternate Scenario
        ; (at grass-0 loc-2-1)
        ; (at grass-1 loc-3-3)
        ; (at log-2 loc-3-2)

        (agentat loc-0-2)
        (handsfree agent)

        ; Adjacency definitions
        (adjacent loc-0-0 loc-0-1)
        (adjacent loc-0-1 loc-0-0)
        (adjacent loc-0-1 loc-0-2)
        (adjacent loc-0-2 loc-0-1)
        (adjacent loc-0-2 loc-0-3)
        (adjacent loc-0-3 loc-0-2)
        (adjacent loc-0-0 loc-1-0)
        (adjacent loc-1-0 loc-0-0)
        (adjacent loc-0-1 loc-1-1)
        (adjacent loc-1-1 loc-0-1)
        (adjacent loc-0-2 loc-1-2)
        (adjacent loc-1-2 loc-0-2)
        (adjacent loc-0-3 loc-1-3)
        (adjacent loc-1-3 loc-0-3)
        (adjacent loc-1-0 loc-1-1)
        (adjacent loc-1-1 loc-1-0)
        (adjacent loc-1-1 loc-1-2)
        (adjacent loc-1-2 loc-1-1)
        (adjacent loc-1-2 loc-1-3)
        (adjacent loc-1-3 loc-1-2)
        (adjacent loc-1-0 loc-2-0)
        (adjacent loc-2-0 loc-1-0)
        (adjacent loc-1-1 loc-2-1)
        (adjacent loc-2-1 loc-1-1)
        (adjacent loc-1-2 loc-2-2)
        (adjacent loc-2-2 loc-1-2)
        (adjacent loc-1-3 loc-2-3)
        (adjacent loc-2-3 loc-1-3)
        (adjacent loc-2-0 loc-2-1)
        (adjacent loc-2-1 loc-2-0)
        (adjacent loc-2-1 loc-2-2)
        (adjacent loc-2-2 loc-2-1)
        (adjacent loc-2-2 loc-2-3)
        (adjacent loc-2-3 loc-2-2)
        (adjacent loc-2-0 loc-3-0)
        (adjacent loc-3-0 loc-2-0)
        (adjacent loc-2-1 loc-3-1)
        (adjacent loc-3-1 loc-2-1)
        (adjacent loc-2-2 loc-3-2)
        (adjacent loc-3-2 loc-2-2)
        (adjacent loc-2-3 loc-3-3)
        (adjacent loc-3-3 loc-2-3)
        (adjacent loc-3-0 loc-3-1)
        (adjacent loc-3-1 loc-3-0)
        (adjacent loc-3-1 loc-3-2)
        (adjacent loc-3-2 loc-3-1)
        (adjacent loc-3-2 loc-3-3)
        (adjacent loc-3-3 loc-3-2)
    )

    (:goal
        (and
            (isplanks log-2)
            (agentat loc-1-1)
            (inventory grass-1)
        )
    )
)