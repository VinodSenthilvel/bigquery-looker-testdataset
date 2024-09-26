view: kollywood {
  sql_table_name: `Movies.Kollywood` ;;

  dimension: actor {
    type: string
    sql: ${TABLE}.Actor ;;
  }
  dimension: data {
    type: string
    sql: ${TABLE}.Data ;;
  }
  dimension: data_ {
    type: string
    sql: ${TABLE}.`Data ` ;;
  }
  dimension: director {
    type: string
    sql: ${TABLE}.Director ;;
  }
  dimension: drill {
    type: string
    sql: ${TABLE}.Drill ;;
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
