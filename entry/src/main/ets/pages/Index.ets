import text from '@ohos.graphics.text'
import {tabsModel,TabsModel} from '../models/tabsModel'
import {RecommendComponent }from '../component/RecommendComponent'
//import {ListComponent} from '../component/ListComponent'
@Entry
@Component
struct Index {
  @State
  currentIndex:number = 0
  @Builder
  tabBuilder(item:TabsModel,index:number){
    // console.log('100')
    Column(){
      Image($rawfile(this.currentIndex==index?item.activeIcon:item.icon)).width(24)

      Text(item.title).fontColor(this.currentIndex==index?'#000':'#999')
        .fontSize(12)
        .margin({top:4})
    }
    .width('100%')
    .height('100%')
    .border({width:{top:1},color:'#eee'})
    .justifyContent(FlexAlign.Center)
    .backgroundColor('#fff')
  }

  build() {
    Column(){
      //导航
      Column(){
        Row(){
          Image($rawfile('more.png')).height(24).width(24).margin({left:16})

          Row(){
            Image($rawfile('search1.png')).height(15).width(15)
            Text('想听什么搜这里')
              .fontColor('#708090')
              .margin({left:10})
          }
          .backgroundColor('#F5F5F5')
          .border({width:1,color:'#FAF0E6'})
          .width('70%')
          .height('70%')
          //.justifyContent(FlexAlign.Center)
          .borderRadius(6)
          .padding(6)
          .margin({left:15})

          Image($rawfile('listen.png')).height(24).width(24).margin({left:12})
        }
        .width('100%')
        .height('100%')



      }
        .height(50)
        .width('100%')
        .backgroundColor('#FFFFFF')

      //内容
      Tabs({barPosition:BarPosition.End}){

        ForEach(tabsModel,(item:TabsModel,index:number)=>{
          TabContent(){
            if (index==0){
              RecommendComponent()
            }else{
              Text(`tab${index+1}`)
            }
            //Text(tab${index})
          }.tabBar(this.tabBuilder(item,index))
        })

      }
      .layoutWeight(1)//布局权重
      .backgroundColor('#f5f5f5')
      .onChange((index)=>{
        this.currentIndex=index
      })
    }



  }
}