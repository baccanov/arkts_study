/**
 * 歌曲名称
 * 歌曲作者
 * 歌曲封面
 * 歌曲播放量
 * 歌曲收藏
 */
export  interface SongModel{

  name:string
  artist:string
  album:string
  img:string
  view_counts:string
  favorites:string
  //time:string
  //url:string
  //
  [props:string]:number|string//标签
}

export const  songModel:SongModel[]=[
  {
    "name": "想去海边",
    "artist": "夏日入侵企画",
    "album":"想去海边",
    "img": "http://p1.music.126.net/sLWN-iePq4ESOMPER0IWgQ==/109951164602081973.jpg?param=130y130",
    "view_counts": "961.2\u4e07",
    "favorites": "6.0\u4e07",
  },
  {
    "name": "缸",
    "artist": "草东没有派对",
    "album":"瓦合",
    "img": "http://p2.music.126.net/m2uGF_-L70GUIB1MOpeaug==/109951168605260513.jpg?param=177y177",
    "view_counts": "961.2\u4e07",
    "favorites": "6.0\u4e07",
  },
  {
    "name": "十万嬉皮",
    "artist": "万能青年旅店",
    "album":"万能青年旅店 同名专辑",
    "img": "http://p1.music.126.net/W1kczDCB4-r-uNAznD1ljg==/108851651165850.jpg?param=130y130",
    "view_counts": "961.2\u4e07",
    "favorites": "6.0\u4e07",
  },
  {
    "name": "今夜无流星",
    "artist": "魏巡",
    "album":"今夜无流星",
    "img": "http://p2.music.126.net/tstr5-jfcmOr3TsgGCZEIQ==/109951169617437368.jpg?param=130y130",
    "view_counts": "961.2\u4e07",
    "favorites": "6.0\u4e07",
  },

]