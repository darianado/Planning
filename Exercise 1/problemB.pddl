(define (problem problemB)
  (:domain navigation_2)
  (:objects
x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 x_6 y_6 x_7 y_7 - coord)
  (:init
    (man_pos x_7 y_1)
    (succ x_1 x_2)
    (succ y_1 y_2)
    (succ x_2 x_3)
    (succ y_2 y_3)
    (succ x_3 x_4)
    (succ y_3 y_4)
    (succ x_4 x_5)
    (succ y_4 y_5)
    (succ x_5 x_6)
    (succ y_5 y_6)
    (succ x_6 x_7)
    (succ y_6 y_7)
  )
  (:goal
    (man_pos x_1 y_7 )
  )
)