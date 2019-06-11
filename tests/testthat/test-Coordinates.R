context('Coordinate transformation')

test_that('Coordinates are reflected correctly', {
  expect_equal( ReflectedEquivalents(0.01, 0.8, direction=1)[[1]], matrix(
    c(-0.06217968 , 0.84167296,
       0.05217968 , 0.82435245,
       0.01000000 ,-0.80000000,
       1.43782032 ,-0.02435245,
      -1.44782032 ,-0.04167296,
       0.01000000 , 0.93205081,
      -1.44782032 , 0.04167296,
       0.05217968 , 0.90769836,
       0.05217968 ,-0.82435245,
       -0.06217968,  0.89037785,
        1.43782032  ,0.02435245,
       -0.06217968, -0.84167296
      ), ncol=2, byrow=TRUE))
  
  expect_equal(round(ReflectedEquivalents(0.8, 0.01, direction=2)[[1]], 5L), matrix(c(
      0.82435,  0.05218,
      0.84167 ,-0.06218,
     -0.80000 , 0.01000,
     -0.04167 ,-1.44782,
     -0.02435 , 1.43782,
      0.93205 , 0.01000,
      0.02435 , 1.43782,
      0.89038 ,-0.06218,
     -0.84167 ,-0.06218,
      0.90770,  0.05218,
      0.04167 ,-1.44782,
     -0.82435,  0.05218
  ), ncol=2, byrow=TRUE))
  
  expect_equal(round(ReflectedEquivalents(0.01, -0.8, direction=3)[[1]], 5),
               matrix(c(
     0.05218 ,-0.82435,
    -0.06218 ,-0.84167,
     0.01000 , 0.80000,
    -1.44782 , 0.04167,
     1.43782 , 0.02435,
     0.01000 ,-0.93205,
     1.43782 ,-0.02435,
    -0.06218 ,-0.89038,
    -0.06218 , 0.84167,
     0.05218, -0.90770,
    -1.44782, -0.04167,
     0.05218,  0.82435
  ), ncol=2, byrow=TRUE))
  
  expect_equal(round(ReflectedEquivalents(-0.13, 0.375, direction=4)[[1]], 5L), matrix(c(
    -0.17325 , 0.44992,
    -0.82277 ,-0.82492,
     0.13000 , 0.37500,
     0.69277 ,-1.05008,
     0.04325 , 0.67508,
    -1.60205 , 0.37500,
    -0.04325 , 0.67508,
    -0.90928 ,-0.82492,
     0.82277 ,-0.82492,
    -1.55880,  0.44992,
    -0.69277 ,-1.05008,
     0.17325,  0.44992
  ), ncol=2, byrow=TRUE))
})  