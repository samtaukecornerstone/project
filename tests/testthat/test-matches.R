
test_that("uss_make_matches works", {
    england <-uss_make_matches(engsoccerdata::england,"England")
    expect_true(tibble::is_tibble(england))

    expect_named(england,
                 c("country", "tier", "season", "date", "home", "visitor", "goals_home", "goals_visitor"))

    expect_identical(england$country,rep("England",nrow(england)))

    expect_s3_class(england$tier, "factor")

    expect_snapshot(dplyr::glimpse(england))
})

