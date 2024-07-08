/**
 *底部导航栏
 *
 */


export interface TabsModel{
  title:string
  icon:string
  activeIcon:string
}
export const  tabsModel:TabsModel[]=[
  {
    title:'推荐',
    icon:'recommend.png',
    activeIcon:'recommend-active.png'
  },
  {
    title:'发现',
    icon:'discover.png',
    activeIcon:'discover-active.png'
  },
  {
    title:'动态',
    icon:'dongtai.png',
    activeIcon:'dongtai-active.png'
  },
  {
    title:'我的',
    icon:'mine.png',
    activeIcon:'mine-active.png'
  }

]
