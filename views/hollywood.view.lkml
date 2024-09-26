view: hollywood {
  sql_table_name: `Movies.Hollywood` ;;

  dimension: actor_name {
    type: string
    sql: ${TABLE}.actor_name ;;
  }
  dimension: movie_name {
    type: string
    sql: ${TABLE}.movie_name ;;
  }
  dimension: movie_url {
    type: string
    sql: ${TABLE}.movie_url ;;
  }
  dimension: music_director {
    type: string
    sql: ${TABLE}.music_director ;;
    drill_fields: [movie_url]
  }
  measure: count {
    type: count
    drill_fields: [actor_name, movie_name]
  }
}
