/**
 * 活动页
 */


export  interface ListModel{

  name:string//歌单名称
  id:string//作者?
  img:string//歌单封面
  //all_click:string//点击量播放量
  favorites:string//歌单收藏
  //burdens:string
  //[props:string]:number|string标签
}


export const  listModel:ListModel[]=[
  {
    "name": "1",
    "id": "1",
    "img": "https:\/\/p1.music.126.net\/3nprUklT1_jx6O3LDodd-w==\/109951169747053733.jpg?imageView&quality=89",

    //"img": "swiper1.png",
    "favorites": "4000"
  },
  {
    "name": "2",
    "id": "2",
    "img": "https:\/\/p1.music.126.net\/FV7JuhXYO7ph2-OIYHMyIw==\/109951169747030361.jpg?imageView&quality=89",

    //"img": 'swiper2.png',
    "favorites": "4000"
  },
  {
    "name": '3',
    "id": '3',
    "img": "http:\/\/p1.music.126.net\/Byx1iQEYhGHFLVNyKgtr2Q==\/109951169747910926.jpg?imageView&quality=89",
    "favorites": '4000'
  },
  {
    "name": '4',
    "id": '4',
    "img": "http:\/\/p1.music.126.net\/06lZzL_bdQzeQpGSia3xMQ==\/109951169747103918.jpg?imageView&quality=89",
    "favorites": '4000'
  },
  {
    "name": '5',
    "id": '5',
    "img": "http:\/\/p1.music.126.net\/bMsClXBjc65KlDhKD9-bKA==\/109951169747038934.jpg?imageView&quality=89",
    "favorites": '4000'
  },

]