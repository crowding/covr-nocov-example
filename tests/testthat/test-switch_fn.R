test_that("switch_fn creates a switch function", {

  sf <- switch_fn(one="large",
                  two="medium",
                  three="small")

  expect_equal(sf("secret"), "huge")
  expect_equal(sf("three"), "small")
  expect_error(sf("pi"), "default")

  af <- another_fn()
  expect_equal(af("secret"), "huge")
  expect_equal(af("three"), "large")
  expect_error(af("pi"), "default")

})
