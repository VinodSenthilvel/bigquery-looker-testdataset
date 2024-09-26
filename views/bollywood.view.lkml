view: bollywood {
  sql_table_name: `Movies.Bollywood` ;;

  dimension: actor {
    type: string
    sql: ${TABLE}.Actor ;;
  }
  dimension: director {
    type: string
    sql: ${TABLE}.Director ;;
  }
  dimension: movie_name {
    type: string
    sql: ${TABLE}.Movie_name ;;
  }
  dimension: music_director {
    type: string
    sql: ${TABLE}.Music_director ;;
  }
  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
    drill_fields: [movie_name]
  }
}
