import {CuratedPlaylistsModel,curatedPlaylistsModel } from '../models/curatedPlaylistsModel'
import { ListModel, listModel} from '../models/listModel'
import { SongModel, songModel} from '../models/songModel'

// import { ComposeListItem } from '@ohos.arkui.advanced.ComposeListItem'
//

@Extend(Text) function  myTitleStyle(){
  .height(50)
  .width('100%')
  .padding({left:10})
  .fontColor('#363636')
  //.fontWeight(FontWeight.Bold)
}
@Component
export struct RecommendComponent{
  build() {
    Scroll(){
      Column(){

        Swiper(){
              // Image($rawfile('swiper1.png')).width('100%')
              // Image($rawfile('swiper2.png')).width('100%')
              // Image($rawfile('swiper3.png')).width('100%')
              // Image($rawfile('swiper4.png')).width('100%')
              // Image($rawfile('swiper5.png')).width('100%')
           ForEach(listModel.slice(0,5),(item:ListModel)=>{
            Image(item.img).width('100%').borderRadius(8)
              })
          }
          .padding(12)
        //.borderRadius()
          .autoPlay(true)
          .indicator(
            new DotIndicator()
              .itemWidth(8)
              .itemHeight(8)
              .selectedItemWidth(8)
              .selectedItemHeight(8)
              .color('#fff')
              .selectedColor('#d81e06')
          )


        /**
         *甄选歌单
         */
        Column(){
          Text('甄选歌单 >')
            .myTitleStyle()

          Grid(){
            ForEach(curatedPlaylistsModel,(item:CuratedPlaylistsModel)=>{
              GridItem(){
                Column(){
                  Image(item.img).borderRadius(8)
                  Text(item.title)
                    .fontColor('#808080')
                    .margin({top:6})
                    .maxLines(2)
                    .textOverflow({overflow: TextOverflow.Ellipsis})

                }
              }
            })

          }
          .columnsTemplate('1fr 1fr 1fr')
          .rowsGap(10)
          .columnsGap(10)
          .padding({left:10,right:10})
          .height('100%')

        }
        .height(370)
        .backgroundColor('fff')
        /**
         *新歌新碟
         */
        Column() {
          Text('新歌新碟 >')
            .myTitleStyle()
          Grid() {
            ForEach(songModel.slice(0,11),(item:SongModel)=>{
              GridItem(){
                Column(){
                  Image(item.img).borderRadius(8)
                  Column(){
                    Text(item.name).fontSize(18)
                    Text(`${item.artist}浏览`)
                      .fontSize(14)
                      .fontColor('#666')
                      .margin({top:3})
                  }
                  .backgroundColor('#fff')
                  .width('100%')
                  .height(60)
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(8)
                }
              }
            })


          }
          .columnsTemplate('1fr 1fr')
          .columnsGap(10)
          .rowsGap(10)
          .padding({left:10,right:10})

        }
        .height(550)
      }
      //.height('100%') 要滚动不能设定高度
    }
    .scrollBar(BarState.Off)//不要虚线
    .edgeEffect(EdgeEffect.Spring)//弹跳的效果


  }

}
