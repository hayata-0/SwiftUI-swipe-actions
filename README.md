# SwiftUIでスワイプ機能を作成
SwiftUIを用いて簡単に作成ができる良く使うスワイプ機能

### 目的
* SwiftUIで良く使用する機能を実装し、SwiftUIの勉強をするため

### 使用技術
* SwiftUI

### 機能の説明
> 機能としては、ListでToDolistなどを簡易的に作成し、Listに対してSwipeActionを付属させている形です。

## Installation
1. クローンをします
```html
git clone https://~
```

2. ビルドしたら使用できます

## 技術メモ

### SwipeActions
```html
.swipeActions {
   Button(action: {
          print("押した")
   }) {
          Image(systemName: "bell")
   }
   .tint(.yellow)
                        
   Button(action: {
          print("押した")
   }) {
          Image(systemName: "trash")
   }
   .tint(.red)
}
```
上記をList内の要素に対して実装をする

また下記のようにedgeでスワイプの対象を設定することができます。

```html
.swipeActions(edge: .leading) {
    Button(action: {
         print("押した")
    }) {
         Image(systemName: "gear")
    }
    .tint(.purple)
}
```

### 注意しなければいけないこと
* こちらはiOS15/macOS12 からサポートされる View Modifierであること
* List 内の要素にのみ指定できる
* .swipeActions の content には、Button のみ有効である

##### iOS14/macOS11 以前では、スワイプ操作は直接にはサポートされていません
