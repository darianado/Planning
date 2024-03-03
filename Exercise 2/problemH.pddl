(define (problem problemH)
  (:domain navigation_2)
  (:objects
x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 - coord 
kc kb ka - key
dC dB dA - door
  )
  (:init
    (empty_hand)
    (man_pos x_5 y_1)
    (unclear x_3 y_5)
    (key_pos kc x_5 y_5)
    (key_door kc dC)
    (succ x_1 x_2)
    (succ y_1 y_2)
    (door_pos dC x_1 y_4)
    (unclear x_1 y_4)
    (unclear x_2 y_4)
    (unclear x_3 y_4)
    (key_pos kb x_5 y_4)
    (key_door kb dB)
    (succ x_2 x_3)
    (succ y_2 y_3)
    (unclear x_3 y_3)
    (key_pos ka x_5 y_3)
    (key_door ka dA)
    (succ x_3 x_4)
    (succ y_3 y_4)
    (door_pos dB x_1 y_2)
    (unclear x_1 y_2)
    (unclear x_2 y_2)
    (unclear x_3 y_2)
    (succ x_4 x_5)
    (succ y_4 y_5)
    (door_pos dA x_3 y_1)
    (unclear x_3 y_1)
  )
  (:goal
    (man_pos x_1 y_5 )
  )
)
