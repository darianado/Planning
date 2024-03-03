(define (problem problemA)
  (:domain navigation_2)
  (:objects
x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 - coord)
  (:init
    (man_pos x_5 y_1)
    (succ x_1 x_2)
    (succ y_1 y_2)
    (succ x_2 x_3)
    (succ y_2 y_3)
    (succ x_3 x_4)
    (succ y_3 y_4)
    (succ x_4 x_5)
    (succ y_4 y_5)
  )
  (:goal
    (man_pos x_1 y_5 )
  )
)