- dashboard: analysis_of_the_fair
  title: Analysis of the fair
  layout: newspaper
  elements:
  - name: Games discounted
    title: Games discounted
    model: boardgames
    explore: spiel
    type: table
    fields:
    - spiel.title
    - spiel.offer
    filters:
      spiel.offer: NOT NULL
    sorts:
    - spiel.title
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    row: 18
    col: 0
    width: 24
    height: 8
