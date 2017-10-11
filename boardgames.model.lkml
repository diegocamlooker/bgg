connection: "diego_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.22
# NOTE: for BigQuery specific considerations

# Create an explorable item based on the "lesson_1_names" view
explore: spiel {

  # Give the explore a user-friendly name in the Explore menu
  label: "spiel"

  # Place this explore under a "Name Game" header in the explore menu
  group_label: "boardgames"
}
