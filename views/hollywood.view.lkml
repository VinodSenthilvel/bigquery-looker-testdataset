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
    drill_fields: [music_director]
  }
  dimension: music_director {
    type: string
    sql: ${TABLE}.music_director ;;
  }
  measure: count {
    type: count
    drill_fields: [actor_name, movie_name]
  }
}
