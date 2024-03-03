(define (problem problemG)
  (:domain navigation_2)
  (:objects
x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 - coord
ka - key
dA - door
  )
  (:init
    (empty_hand)
    (man_pos x_4 y_1)
    (unclear x_3 y_4)
    (key_pos ka x_4 y_4)
    (key_door ka dA)
    (succ x_1 x_2)
    (succ y_1 y_2)
    (unclear x_3 y_3)
    (succ x_2 x_3)
    (succ y_2 y_3)
    (door_pos dA x_1 y_2)
    (unclear x_1 y_2)
    (unclear x_2 y_2)
    (unclear x_3 y_2)
    (succ x_3 x_4)
    (succ y_3 y_4)
  )
  (:goal
    (man_pos x_1 y_4 )
  )
)
