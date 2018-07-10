connection: "diego_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.22
# NOTE: for BigQuery specific considerations

# Create an explorable item based on the "lesson_1_names" view
explore: spiel {

#   sql_always_where: ${type} ='Standalone';;

# sql_always_where: {% if spiel.hall._value == 'none'%}
#                     ${title}= {{'Standalone              ' | strip}}
#                     {% else %}
#                     ${type}={{'Expansion                        '| strip}}
#                     {% endif %};;

#   fields: [-ALL_FIELDS*]

  # Give the explore a user-friendly name in the Explore menu
  label: "spiel"

  # Place this explore under a "Name Game" header in the explore menu
  group_label: "boardgames"

  description: "Looker analysis of the new releases in Spiel this year"
}

explore: sql_runner_query {
  label: "Sql runner test"
  group_label: "boardgames"
}
