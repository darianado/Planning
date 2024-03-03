(define (domain gripper-strips)
   (:requirements :typing :strips)
   (:predicates (at-robot ?r - room) (free ?g - gripper )(at ?b - ball ?r - room) (holding ?b - ball ?g - gripper))
   (:types room gripper ball - object)
   (:constants left right - gripper rooma roomb - room)
   
   ; ToDo: 
   ; - create the predicates (hint: look at the instances files first!)
   ; - fill the preconditions and effects 
   ;   in every action schema

   (:action move
       :parameters (?from - room ?to - room)
       :precondition  (at-robot ?from) 
       :effect (and  (not(at-robot ?from)) (at-robot ?to ))
   )

   (:action pick
       :parameters (?b - ball ?r - room ?g - gripper)
       :precondition (and  (at-robot ?r) (at ?b ?r) (free ?g))
       :effect (and (holding ?b ?g) (not(at ?b ?r)) (not(free ?g)))
   )

   (:action drop
       :parameters (?b - ball ?r - room ?g - gripper)
       :precondition (and (at-robot ?r) (holding ?b ?g) )
       :effect (and  (not(holding ?b ?g)) (free ?g) (at ?b ?r))
   )
)
