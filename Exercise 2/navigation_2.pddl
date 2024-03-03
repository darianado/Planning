(define (domain navigation_2)
(:types coord door key)
(:predicates (man_pos ?x - coord ?y - coord) (succ ?y1 - coord ?y2 - coord) (key_pos ?a - key ?x - coord ?y - coord) (holding ?a - key) (empty_hand) 
(key_door ?a - key ?B - door) (door_pos ?B - door ?x - coord ?y - coord) (unclear ?x - coord ?y - coord))

;(:action up
;:parameters ()
;:precondition (and (man_pos ?x ?y0) (succ ?y0 ?y1) (not(wall_pos ?x ?y0)))
;:effect (and (man_pos ?x ?y1) (not(man_pos ?x ?y0))))


(:action up
:parameters ()
:precondition (and )
:effect (forall (?x0 - coord ?y0 - coord ?y1 - coord)
(when (and (man_pos ?x0 ?y0) (succ ?y0 ?y1) (not(unclear ?x0 ?y1)))
(and (man_pos ?x0 ?y1) (not (man_pos ?x0 ?y0))))))

(:action down
:parameters ()
:precondition (and )
:effect (forall (?x0 - coord ?y0 - coord ?y1 - coord)
(when (and (man_pos ?x0 ?y0) (succ ?y1 ?y0) (not(unclear ?x0 ?y1)))
(and (man_pos ?x0 ?y1) (not (man_pos ?x0 ?y0))))))

(:action right
:parameters ()
:precondition (and )
:effect (forall (?x0 - coord ?y0 - coord ?x1  - coord)
(when (and (man_pos ?x0 ?y0) (succ ?x0 ?x1) (not(unclear ?x1 ?y0)))
(and (man_pos ?x1 ?y0) (not (man_pos ?x0 ?y0))))))

(:action left
:parameters ()
:precondition (and )
:effect (forall (?x0 - coord ?y0 - coord ?x1 - coord)
(when (and (man_pos ?x0 ?y0) (succ ?x1 ?x0) (not(unclear ?x1 ?y0)))
(and (man_pos ?x1 ?y0) (not (man_pos ?x0 ?y0))))))

(:action pickup
:parameters (?a - key)
:precondition (and )
:effect (forall (?x0 - coord ?y0 - coord)
(when (and (man_pos ?x0 ?y0) (key_pos ?a ?x0 ?y0) (empty_hand))
(and (not(key_pos ?a ?x0 ?y0)) (holding ?a) (not(empty_hand))))))

(:action unlock
:parameters (?D - door ?a - key)
:precondition (and )
:effect(forall (?x0 - coord ?y0 - coord ?x1 - coord ?y1 - coord)
(when (and (key_door ?a ?D) (holding ?a) (door_pos ?D ?x0 ?y0) (or (and(succ ?x0 ?x1) (man_pos ?x1 ?y0)) (and(succ ?x1 ?x0)(man_pos ?x1 ?y0)) (and(succ ?y0 ?y1)(man_pos ?x0 ?y1)) (and(succ ?y1 ?y0)(man_pos ?x0 ?y1))))
(and (not(door_pos ?D ?x0 ?y0)) (not(holding ?a)) (empty_hand) (not(unclear ?x0 ?y0))))))

)


