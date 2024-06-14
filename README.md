
# Variables 變數

## 設定 Playground
- 新建一個空白的 Playground。
- 透過 `import Foundation` 引入 Foundation 庫，用於基本的 Swift 操作。

## 變數與常數的宣告
- Swift 中有兩種關鍵字來宣告變數：`let` 和 `var`。
  - `let` 用於宣告常數，不可重新賦值。
  - `var` 用於宣告變數，可以重新賦值。
- **例子：**
  - `let myName = "Vandad"`
  - `var yourName = "Foo"`

## 變數與常數的不同
- `let` 變數不能重新賦值，而 `var` 變數可以重新賦值。
- `let` 常數的內部值不能被修改，而 `var` 變數的內部值可以被修改。
- **例子：**
  - `let names = ["Vandad", "Foo"]` 則 `names` 不能被修改。
  - `var names = ["Vandad", "Foo"]` 則 `names` 可以用 `.append()` 方法新增元素。

## 數組的操作
- Swift 中的數組（Array）是結構體（structure），屬於值類型（value types）。
- **例子：**
  - `var names = ["Vandad", "Foo"]`
  - `names.append("Bar")` 可以新增元素。
  - 如果 `names` 是用 `let` 宣告，則無法使用 `append` 方法。

## 值類型與參考類型
- Swift 中的結構體是值類型，類別是參考類型。
- **值類型：**
  - 當變數賦值給另一個變數時，會複製其值。
  - 例如：`let moreNames = ["Foo", "Bar"]` 和 `var copy = moreNames`，修改 `copy` 不會影響 `moreNames`。
- **參考類型：**
  - 當變數賦值給另一個變數時，兩個變數引用同一個實例。
  - 例如：`let oldArray = NSMutableArray(array: ["Foo", "Bar"])` 和 `var newArray = oldArray`，修改 `newArray` 會影響 `oldArray`。

## 內部可變性
- `let` 變數如果持有的是一個類別實例，該實例的內部值仍然可以被修改。
- **例子：**
  - `let oldArray = NSMutableArray(array: ["Foo", "Bar"])`
  - `oldArray.add("Baz")`，`oldArray` 內部值會被修改。

## 範例程式碼與說明
```swift
let someNames = ["Foo", "Bar"]
func changeArray(array: NSArray) {
    let mutableArray = array as! NSMutableArray
    mutableArray.add("Baz")
}
changeArray(array: someNames)
print(someNames) // 會列印 ["Foo", "Bar", "Baz"]
```
- 此例說明了 `NSArray` 轉型為 `NSMutableArray` 後，內部值可以被修改。

## 注意事項
- 在 Swift 中，確保理解 `let` 和 `var` 的不同，以及值類型與參考類型的操作方式。
- 熟悉這些概念對於後續學習 Swift 的其他功能和特性非常重要。


# Operators 運算子

## 設定 Playground
- 新建一個空白的 Playground。
- 透過 `import Foundation` 引入 Foundation 庫。

## 基本運算子
- 宣告常數：`let myAge = 22` 和 `let yourAge = 20`
- 比較運算子：`>` 和 `<`
  - **例子：**
    ```swift
    if myAge > yourAge {
        print("I'm older than you")
    } else if myAge < yourAge {
        print("I'm younger than you")
    } else {
        print("We are the same age")
    }
    ```

## 算術運算子
- 加法運算子：`+`
  - **例子：**
    ```swift
    let myMotherAge = myAge + 30
    ```
- 乘法運算子：`*`
  - **例子：**
    ```swift
    let doubleMyAge = myAge * 2
    ```

## 運算子類型
- Swift 中有三種類型的運算子：
  - **單目前置運算子（Unary Prefix）**
  - **單目後置運算子（Unary Postfix）**
  - **雙目中置運算子（Binary Infix）**

### 單目前置運算子（Unary Prefix）
- 只作用於一個值，位於值之前。
  - **例子：**
    ```swift
    let foo = true
    let notFoo = !foo
    ```

### 單目後置運算子（Unary Postfix）
- 只作用於一個值，位於值之後。
  - **例子：**
    ```swift
    let name: String? = "Vandad"
    let unwrappedName = name!
    ```

### 雙目中置運算子（Binary Infix）
- 作用於兩個值，位於兩值之間。
  - **例子：**
    ```swift
    let result = 1 + 2
    let fullName = "Foo" + " " + "Bar"
    ```

## 三元運算子（Ternary Operator）
- 格式：`condition ? value_if_true : value_if_false`
  - **例子：**
    ```swift
    let age = 30
    let message = age >= 18 ? "You are an adult" : "You are not yet an adult"
    ```

## 重點整理
- 運算子是特別的函數，Swift 將其視為特別的函數。
- **單目前置運算子**：只作用於一個值且位於值之前。
- **單目後置運算子**：只作用於一個值且位於值之後。
- **雙目中置運算子**：作用於兩個值且位於兩值之間。
- **三元運算子**：條件運算子，用於簡化條件判斷。

# If and Else 條件判斷

## 設定 Playground
- 新建一個空白的 Playground。
- 透過 `import Foundation` 引入 Foundation 庫。

## 基本 If 和 Else 語句
- **例子：**
  ```swift
  let myName = "vandad"
  if myName == "Vandad" {
      print("Your name is \(myName)")
  } else {
      print("Oops, I guessed it wrong")
  }
  ```
  - 比較字符串 `myName` 是否等於 `"Vandad"`。
  - 使用 `else` 處理不符合條件的情況。

## Else If 語句
- **例子：**
  ```swift
  if myName == "Vandad" {
      print("Now I guessed it correctly")
  } else if myName == "Foo" {
      print("Are you Foo?")
  } else {
      print("Okay, I give up")
  }
  ```
  - 使用 `else if` 增加更多條件分支。

## 多條件判斷
- 使用 `&&`（邏輯與）運算符。
  ```swift
  if myName == "Vandad" && myAge == 30 {
      print("Name is Vandad and age is 30")
  } else if myAge == 20 {
      print("I only guessed the age right")
  } else {
      print("I don't know what I'm doing")
  }
  ```
  - 同時檢查多個條件。

## 邏輯運算符
- **OR 運算符 (`||`)**
  ```swift
  if myAge == 20 || myName == "Foo" {
      print("Either age is 20, name is Foo, or both")
  }
  ```
  - 至少一個條件成立即執行。

## 邏輯運算順序
- 需要小心處理邏輯運算符，否則可能會導致錯誤的結果。
  - **例子：**
    ```swift
    if (myName == "Vandad" && myAge == 22) || (yourName == "Foo" || yourAge == 19) {
        print("Complex condition met")
    } else {
        print("Condition not met")
    }
    ```
  - 使用括號來明確運算順序。

## 常見錯誤
- **例子：**
  ```swift
  if myAge == 20 || myName == "Foo" {
      print("Either age is 20, name is Foo, or both")
  } else if myName == "Vandad" || myAge == 20 {
      print("Too late to get in this class")
  }
  ```
  - 注意 `if` 條件判斷的邏輯。

## 重點整理
- **基本用法：**
  - `if` 語句用於條件判斷。
  - `else if` 和 `else` 用於處理多個條件分支。
- **邏輯運算符：**
  - `&&` 用於與條件，要求所有條件都成立。
  - `||` 用於或條件，要求至少一個條件成立。
- **複雜條件判斷：**
  - 使用括號來確保運算順序正確。
- **良好習慣：**
  - 避免過於複雜的條件判斷，保持程式碼易讀。
  - 與團隊協作時，統一條件判斷的書寫風格。

# Functions 函數

## 設定 Playground
- 新建一個空白的 Playground。
- 透過 `import Foundation` 引入 Foundation 庫。

## 基本函數
- **無參數與無返回值的函數**
  ```swift
  func noArgumentsAndNoReturnValue() {
      print("I don't know what I'm doing")
  }
  noArgumentsAndNoReturnValue()
  ```
  - 使用 `func` 關鍵字定義函數。
  - 函數名稱使用駝峰式命名法。
  - 沒有參數和返回值的函數。

## 帶參數的函數
- **有參數無返回值的函數**
  ```swift
  func plusTwo(value: Int) {
      let newValue = value + 2
      print(newValue)
  }
  plusTwo(value: 30)
  ```
  - 定義函數參數名稱及其類型。
  - 參數傳遞。

## 帶返回值的函數
- **有參數有返回值的函數**
  ```swift
  func newPlusTwo(value: Int) -> Int {
      return value + 2
  }
  let result = newPlusTwo(value: 30)
  print(result)
  ```

## 多參數函數
- **多參數並返回值的函數**
  ```swift
  func customAdd(value1: Int, value2: Int) -> Int {
      return value1 + value2
  }
  let sum = customAdd(value1: 10, value2: 20)
  print(sum)
  ```

## 參數名稱
- **內部和外部參數名稱**
  ```swift
  func customSubtract(_ lhs: Int, _ rhs: Int) -> Int {
      return lhs - rhs
  }
  let difference = customSubtract(20, 10)
  print(difference)
  ```

## 可丟棄返回值的函數
- **使用 `@discardableResult` 註解**
  ```swift
  @discardableResult
  func myCustomAdd(_ lhs: Int, _ rhs: Int) -> Int {
      return lhs + rhs
  }
  myCustomAdd(20, 30)
  ```

## 函數中的函數
- **內部函數的使用**
  ```swift
  func doSomethingComplicated(with value: Int) -> Int {
      func mainLogic(_ value: Int) -> Int {
          return value + 2
      }
      return mainLogic(value + 3)
  }
  let result = doSomethingComplicated(with: 30)
  print(result)
  ```

## 帶預設值的參數
- **預設參數值的函數**
  ```swift
  func getFullName(firstName: String = "Foo", lastName: String = "Bar") -> String {
      return "\(firstName) \(lastName)"
  }
  let fullName1 = getFullName()
  let fullName2 = getFullName(firstName: "Baz")
  let fullName3 = getFullName(lastName: "Qux")
  let fullName4 = getFullName(firstName: "Baz", lastName: "Qux")
  print(fullName1, fullName2, fullName3, fullName4)
  ```

## 重點整理
- **函數定義：**
  - 使用 `func` 關鍵字定義函數。
  - 函數名稱使用駝峰式命名法。
  - 可以有參數和返回值。
- **參數傳遞：**
  - 定義參數名稱及其類型。
  - 可以有內部和外部參數名稱。
- **返回值：**
  - 使用 `->` 指定返回值類型。
  - 可以使用 `@discardableResult` 註解來允許丟棄返回值。
- **內部函數：**
  - 函數內可以定義其他函數。
- **預設參數值：**
  - 可以為參數設置預設值，允許函數在沒有傳遞所有參數的情況下被調用。

# Closures 閉包

## 設定 Playground
- 新建一個空白的 Playground。
- 透過 `import Foundation` 引入 Foundation 庫。

## 基本閉包
- **閉包的定義與使用**
  ```swift
  let add: (Int, Int) -> Int = { (leftHandSide: Int, rightHandSide: Int) -> Int in
      return leftHandSide + rightHandSide
  }
  let result = add(20, 30)
  print(result) // 50
  ```

## 閉包作為參數
- **將閉包作為參數傳遞給函數**
  ```swift
  func customAdd(lhs: Int, rhs: Int, using function: (Int, Int) -> Int) -> Int {
      return function(lhs, rhs)
  }
  let sum = customAdd(lhs: 20, rhs: 30) { (leftHandSide, rightHandSide) -> Int in
      return leftHandSide + rightHandSide
  }
  print(sum) // 50
  ```

## 閉包簡化
- **移除閉包的類型與返回值**
  ```swift
  let simplifiedSum = customAdd(lhs: 20, rhs: 30) { lhs, rhs in
      lhs + rhs
  }
  print(simplifiedSum) // 50
  ```

- **使用 Swift 的縮寫參數名**
  ```swift
  let shorthandSum = customAdd(lhs: 20, rhs: 30) {
      $0 + $1
  }
  print(shorthandSum) // 50
  ```

## 運算符作為閉包
- **傳遞運算符作為閉包參數**
  ```swift
  let ascendingAges = [30, 20, 19, 40].sorted(by: <)
  let descendingAges = [30, 20, 19, 40].sorted(by: >)
  print(ascendingAges) // [19, 20, 30, 40]
  print(descendingAges) // [40, 30, 20, 19]
  ```

## 使用函數作為閉包
- **將現有函數作為參數傳遞給閉包**
  ```swift
  func addTen(to value: Int) -> Int {
      return value + 10
  }
  func addTwenty(to value: Int) -> Int {
      return value + 20
  }
  func doAddition(on value: Int, using function: (Int) -> Int) -> Int {
      return function(value)
  }
  let result1 = doAddition(on: 20, using: addTen)
  let result2 = doAddition(on: 20, using: addTwenty)
  print(result1) // 30
  print(result2) // 40
  ```

## 重點整理
- **閉包定義：**
  - 閉包是一種內聯函數，可以傳遞給其他函數使用。
- **閉包作為參數：**
  - 可以將閉包作為函數的參數，並在函數內部調用。
- **閉包簡化：**
  - 可以簡化閉包的類型與返回值定義，使用縮寫參數名。
- **運算符與函數作為閉包：**
  - 可以將運算符和現有函數作為閉包參數傳遞給其他函數。

# Structures 結構

## 設定 Playground
- 新建一個空白的 Playground。
- 透過 `import Foundation` 引入 Foundation 庫。

## 基本結構
- **結構的定義與實例化**
  ```swift
  struct Person {
      let name: String
      var age: Int
  }
  let person = Person(name: "Foo", age: 20)
  print(person.name) // Foo
  print(person.age)  // 20
  ```

## 自定義初始化函數
- **自定義初始化函數**
  ```swift
  struct CommodoreComputer {
      let name: String
      let manufacturer: String
      
      init(name: String) {
          self.name = name
          self.manufacturer = "Commodore"
      }
  }
  let c64 = CommodoreComputer(name: "C64")
  print(c64.name)          // C64
  print(c64.manufacturer)  // Commodore
  ```

## 計算屬性
- **定義計算屬性**
  ```swift
  struct Person2 {
      let firstName: String
      let lastName: String
      
      var fullName: String {
          return "\(firstName) \(lastName)"
      }
  }
  let person2 = Person2(firstName: "Foo", lastName: "Bar")
  print(person2.fullName) // Foo Bar
  ```

## 變異方法
- **使用變異方法改變結構的屬性**
  ```swift
  struct Car {
      var currentSpeed: Int
      
      mutating func drive(at speed: Int) {
          currentSpeed = speed
      }
  }
  var car = Car(currentSpeed: 10)
  car.drive(at: 30)
  print(car.currentSpeed) // 30
  ```

## 結構複製
- **結構的值類型行為**
  ```swift
  struct Car {
      var currentSpeed: Int
  }
  var car1 = Car(currentSpeed: 10)
  var car2 = car1
  car2.currentSpeed = 20
  print(car1.currentSpeed) // 10
  print(car2.currentSpeed) // 20
  ```

## 自定義複製
- **實現自定義複製方法**
  ```swift
  struct Bike {
      let manufacturer: String
      let currentSpeed: Int
      
      func copy(with currentSpeed: Int) -> Bike {
          return Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
      }
  }
  let bike1 = Bike(manufacturer: "Harley Davidson", currentSpeed: 20)
  let bike2 = bike1.copy(with: 30)
  print(bike1.currentSpeed) // 20
  print(bike2.currentSpeed) // 30
  ```

## 重點整理
- **基本結構：**
  - 使用 `struct` 關鍵字定義結構。
  - 可以包含常量和變量屬性。
- **自定義初始化函數：**
  - 可以創建自定義初始化函數。
  - 使用 `self` 關鍵字來區分屬性和參數。
- **計算屬性：**
  - 可以使用計算屬性來實現動態計算的值。
- **變異方法：**
  - 使用 `mutating` 關鍵字標記方法以允許修改屬性。
- **結構的值類型行為：**
  - 結構是值類型，複製時會創建副本。
- **自定義複製：**
  - 可以實現自定義方法來創建結構的複製。

# Enumerations 列舉

## 設定 Playground
- 新建一個空白的 Playground。
- 透過 `import Foundation` 引入 Foundation 庫。

## 基本列舉
- **定義與使用列舉**
  ```swift
  enum Animals {
      case cat
      case dog
      case rabbit
  }
  let pet = Animals.cat
  print(pet) // cat
  ```

## 使用 Switch 進行列舉比較
- **用 Switch 語句比較列舉**
  ```swift
  switch pet {
  case .cat:
      print("This is a cat")
  case .dog:
      print("This is a dog")
  case .rabbit:
      print("This is a rabbit")
  }
  ```

## 列舉中的 Associated Values
- **定義與使用包含關聯值的列舉**
  ```swift
  enum Shortcut {
      case fileOrFolder(path: URL, name: String)
      case wwwURL(path: URL)
      case song(artist: String, songName: String)
  }
  let shortcut = Shortcut.wwwURL(path: URL(string: "https://apple.com")!)
  ```

## 列舉中的 Switch 與 Associated Values
- **在 Switch 語句中使用關聯值**
  ```swift
  switch shortcut {
  case .fileOrFolder(let path, let name):
      print("File or folder: \(name) at \(path)")
  case .wwwURL(let path):
      print("URL: \(path)")
  case .song(let artist, let songName):
      print("Song: \(songName) by \(artist)")
  }
  ```

## 列舉中的 Raw Values
- **定義與使用包含原始值的列舉**
  ```swift
  enum FamilyMember: String {
      case father = "Dad"
      case mother = "Mom"
      case brother = "Bro"
      case sister = "Sis"
  }
  let member = FamilyMember.father
  print(member.rawValue) // Dad
  ```

## 透過 Protocol 取得所有列舉案例
- **使用 CaseIterable Protocol**
  ```swift
  enum FavoriteEmoji: String, CaseIterable {
      case blush = "😊"
      case rocket = "🚀"
      case fire = "🔥"
  }
  for emoji in FavoriteEmoji.allCases {
      print(emoji.rawValue)
  }
  ```

## 變異方法
- **定義與使用變異方法**
  ```swift
  enum Height {
      case short, medium, long
      
      mutating func makeLong() {
          self = .long
      }
  }
  var myHeight = Height.medium
  myHeight.makeLong()
  print(myHeight) // long
  ```

## 其他進階功能
- **定義間接列舉或遞迴列舉**
  ```swift
  indirect enum IntOperation {
      case addition(Int, Int)
      case subtraction(Int, Int)
      case freehand(IntOperation)
  }
  ```

## 重點整理
- **基本列舉：**
  - 使用 `enum` 關鍵字定義列舉。
  - 列舉中的案例使用 `case` 關鍵字定義。
- **Switch 語句：**
  - 使用 Switch 語句來比較列舉值。
  - 可以用 `default` 關鍵字處理未定義的案例。
- **Associated Values：**
  - 列舉案例可以有關聯值。
  - 使用 Switch 語句處理關聯值。
- **Raw Values：**
  - 列舉案例可以有原始值。
  - 使用 `.rawValue` 獲取列舉案例的原始值。
- **CaseIterable Protocol：**
  - 使用 `CaseIterable` Protocol 獲取所有列舉案例。
- **變異方法：**
  - 使用 `mutating` 關鍵字定義變異方法。
  - 可以在變異方法中改變列舉的值。
- **間接列舉：**
  - 使用 `indirect` 關鍵字定義遞迴列舉。

# Classes 類別

## 基本介紹
- **類別與結構的區別**
  - 類別是參考類型 (reference type)，而結構是值類型 (value type)。
  - 類別允許在內部進行可變性 (mutability)，不需要使用 `mutating` 關鍵字。

## 定義類別
- **簡單類別定義與初始化**
  ```swift
  class Person {
      var name: String
      var age: Int
      
      init(name: String, age: Int) {
          self.name = name
          self.age = age
      }
      
      func increaseAge() {
          self.age += 1
      }
  }
  let foo = Person(name: "Foo", age: 20)
  print(foo.age) // 20
  foo.increaseAge()
  print(foo.age) // 21
  ```

## 參考類型
- **參考類型示例**
  ```swift
  let bar = foo
  bar.increaseAge()
  print(foo.age) // 22
  print(bar.age) // 22
  ```

## 等於運算符 (Equality Operators)
- **使用三個等號比較參考**
  ```swift
  if foo === bar {
      print("foo and bar point to the same instance")
  } else {
      print("foo and bar do not point to the same instance")
  }
  ```

## 繼承 (Inheritance)
- **定義與使用繼承**
  ```swift
  class Vehicle {
      func goVroom() {
          print("Vroom vroom")
      }
  }
  class Car: Vehicle {}
  let car = Car()
  car.goVroom() // Vroom vroom
  ```

## 私有 Setter
- **定義與使用私有 Setter**
  ```swift
  class Person2 {
      private(set) var age: Int
      
      init(age: Int) {
          self.age = age
      }
      
      func increaseAge() {
          self.age += 1
      }
  }
  let baz = Person2(age: 20)
  print(baz.age) // 20
  // baz.age += 1 // 這行會產生錯誤
  baz.increaseAge()
  print(baz.age) // 21
  ```

## 指定初始化器與便利初始化器
- **指定初始化器 (Designated Initializers)**
  ```swift
  class Tesla {
      let manufacturer: String
      var model: String
      var year: Int
      
      init(model: String, year: Int) {
          self.manufacturer = "Tesla"
          self.model = model
          self.year = year
      }
  }
  ```

- **便利初始化器 (Convenience Initializers)**
  ```swift
  class Tesla {
      let manufacturer: String
      var model: String
      var year: Int
      
      init(model: String, year: Int) {
          self.manufacturer = "Tesla"
          self.model = model
          self.year = year
      }
      
      convenience init(model: String) {
          self.init(model: model, year: 2023)
      }
  }
  ```

## 方法內變異與參考
- **類別的參考行為**
  ```swift
  let fubar = Person2(age: 20)
  func doSomething(with person: Person2) {
      person.increaseAge()
  }
  doSomething(with: fubar)
  print(fubar.age) // 21
  ```

## 解初始化器 (Deinitializers)
- **定義與使用解初始化器**
  ```swift
  class MyClass {
      init() {
          print("Initialized")
      }
      
      deinit {
          print("Deinitialized")
      }
      
      func doSomething() {
          print("Doing something")
      }
  }
  
  do {
      let myClass = MyClass()
      myClass.doSomething()
  }
  // 這裡將會打印 "Deinitialized" 因為作用域結束後，myClass 將被釋放。
  ```

## 重點整理
- **基本類別：**
  - 使用 `class` 關鍵字定義類別。
  - 類別是參考類型，可以在內部進行變更。
- **繼承：**
  - 類別可以繼承其他類別，並且繼承其方法與屬性。
- **私有 Setter：**
  - 使用 `private(set)` 關鍵字定義只能在內部變更的屬性。
- **初始化器：**
  - 類別需要定義初始化器，並且可以有指定初始化器與便利初始化器。
- **參考行為：**
  - 類別的參考行為導致多個變數可以指向同一個實例。
- **解初始化器：**
  - 解初始化器在實例被釋放時調用，用於清理資源。

# Protocols 協議

## 介紹
- **定義**：Protocols 是一種特定的對象，類似於 Java 中的接口(interface)。
- **作用**：定義一組規則，對象必須遵循這些規則。

## 定義協議
- **基本定義**
  ```swift
  protocol CanBreathe {
      func breathe()
  }
  ```

## 類別和結構遵循協議
- **結構遵循協議**
  ```swift
  struct Animal: CanBreathe {
      func breathe() {
          print("Animal breathing")
      }
  }
  let dog = Animal()
  dog.breathe() // Animal breathing
  ```

- **類別遵循協議**
  ```swift
  struct Person: CanBreathe {
      func breathe() {
          print("Person breathing")
      }
  }
  let foo = Person()
  foo.breathe() // Person breathing
  ```

## 協議擴展
- **擴展協議以提供默認實現**
  ```swift
  protocol CanJump {
      func jump()
  }

  extension CanJump {
      func jump() {
          print("Jumping")
      }
  }

  struct Cat: CanJump {}
  let whiskers = Cat()
  whiskers.jump() // Jumping
  ```

## 協議中的屬性
- **定義協議屬性**
  ```swift
  protocol HasName {
      var name: String { get }
      var age: Int { get set }
  }

  struct Dog: HasName {
      let name: String
      var age: Int
  }
  let woof = Dog(name: "Woof", age: 10)
  print(woof.name) // Woof
  print(woof.age) // 10
  ```

## 協議擴展中的方法
- **擴展協議以添加方法**
  ```swift
  extension HasName {
      func describeMe() -> String {
          return "Your name is \(name) and you are \(age) years old."
      }

      mutating func increaseAge() {
          age += 1
      }
  }
  var woof = Dog(name: "Woof", age: 10)
  print(woof.describeMe()) // Your name is Woof and you are 10 years old.
  woof.increaseAge()
  print(woof.age) // 11
  ```

## 協議中的變異方法
- **定義變異方法**
  ```swift
  protocol Vehicle {
      var speed: Int { get set }
      mutating func increaseSpeed(by value: Int)
  }

  extension Vehicle {
      mutating func increaseSpeed(by value: Int) {
          speed += value
      }
  }

  struct Bike: Vehicle {
      var speed = 0
  }
  var bike = Bike()
  bike.increaseSpeed(by: 10)
  print(bike.speed) // 10
  ```

## 檢查協議遵循
- **使用 `is` 檢查對象是否遵循某協議**
  ```swift
  func describe(_ object: Any) {
      if object is Vehicle {
          print("Object conforms to the Vehicle protocol")
      } else {
          print("Object does not conform to the Vehicle protocol")
      }
  }

  describe(bike) // Object conforms to the Vehicle protocol
  ```

## 使用 `as` 和 `as?` 進行類型轉換
- **條件類型轉換**
  ```swift
  func increaseSpeedIfVehicle(_ object: Any) {
      if let vehicle = object as? Vehicle {
          vehicle.increaseSpeed(by: 20)
          print(vehicle.speed)
      } else {
          print("This was not a vehicle")
      }
  }

  increaseSpeedIfVehicle(bike) // 30 (after calling it twice)
  ```

## 參考類型與值類型的區別
- **類與結構在協議中的行為差異**
  ```swift
  class Car: Vehicle {
      var speed = 0
  }
  let car = Car()
  increaseSpeedIfVehicle(car)
  print(car.speed) // 20
  ```

## 小結
- **協議定義**：定義一組規則，結構或類別遵循這些規則。
- **協議擴展**：可以為協議提供默認的實現。
- **檢查和轉換**：使用 `is` 和 `as` 來檢查對象是否遵循協議，並進行條件類型轉換。
- **變異方法**：協議中的方法可以標記為變異，允許修改實例屬性。

# Extensions 擴展

## 介紹
- **定義**：Extensions 可以為現有類型添加功能，使得我們能夠擴展原有類型的能力，而無需修改其源代碼。

## 擴展數據類型
- **擴展整數類型**
  ```swift
  extension Int {
      func plusTwo() -> Int {
          return self + 2
      }
  }

  let value = 2
  print(value.plusTwo()) // 4
  ```

## 為現有類型添加初始化器
- **為結構添加初始化器**
  ```swift
  struct Person {
      let firstName: String
      let lastName: String
  }

  extension Person {
      init(fullName: String) {
          let components = fullName.split(separator: " ")
          self.init(firstName: String(components.first ?? ""), lastName: String(components.last ?? ""))
      }
  }

  let person = Person(fullName: "Foo Bar")
  print(person.firstName) // Foo
  print(person.lastName) // Bar
  ```

## 擴展協議並添加默認實現
- **擴展協議**
  ```swift
  protocol GoesVroom {
      var vroomValue: String { get }
      func goVroom() -> String
  }

  extension GoesVroom {
      func goVroom() -> String {
          return "\(vroomValue) goes vroom"
      }
  }

  struct Car: GoesVroom {
      let manufacturer: String
      let model: String
      
      var vroomValue: String {
          return "\(manufacturer) \(model)"
      }
  }

  let modelX = Car(manufacturer: "Tesla", model: "Model X")
  print(modelX.goVroom()) // Tesla Model X goes vroom
  ```

## 為類別添加便捷初始化器
- **擴展類別並添加便捷初始化器**
  ```swift
  class MyDouble {
      let value: Double
      
      init(value: Double) {
          self.value = value
      }
  }

  extension MyDouble {
      convenience init() {
          self.init(value: 0)
      }
  }

  let myDouble = MyDouble()
  print(myDouble.value) // 0
  ```

## 擴展協議
- **擴展協議並添加新方法**
  ```swift
  extension GoesVroom {
      func goVroomVroomEvenMore() -> String {
          return "\(vroomValue) is vrooming even more"
      }
  }

  print(modelX.goVroomVroomEvenMore()) // Tesla Model X is vrooming even more
  ```

## 小結
- **擴展的強大功能**：
  - 擴展數據類型：可以為現有數據類型添加方法。
  - 添加初始化器：可以為現有類型添加初始化器而不破壞現有的初始化器。
  - 擴展協議：可以為協議添加默認實現和新方法，使得所有遵循該協議的類型自動獲得這些新功能。
  - 擴展類別：可以為類別添加便捷初始化器，增加類別的靈活性。

# Generics 泛型

## 介紹
- **定義**：泛型是一種強大的工具，允許我們編寫靈活且可重用的代碼，避免重複代碼。
- **目標**：希望能夠使用同一函數或類型來處理不同的數據類型，而不需要針對每種數據類型編寫重複的代碼。

## 基本範例
- **範例說明**：編寫一個可以接受任意數值類型的函數，並對兩個值進行運算。
  ```swift
  func perform<T: Numeric>(_ lhs: T, _ rhs: T, using operation: (T, T) -> T) -> T {
      return operation(lhs, rhs)
  }

  let sum = perform(10, 20, using: +)          // 30
  let difference = perform(20.0, 10.0, using: -) // 10.0
  ```

## 使用條件約束
- **範例說明**：為泛型添加條件約束，指定泛型參數必須符合某個協議。
  ```swift
  func perform<T>(_ lhs: T, _ rhs: T, using operation: (T, T) -> T) -> T where T: Numeric {
      return operation(lhs, rhs)
  }
  ```

## 多個泛型參數
- **範例說明**：處理多個泛型參數的函數範例。
  ```swift
  func swapValues<T>(_ a: inout T, _ b: inout T) {
      let temp = a
      a = b
      b = temp
  }

  var a = 1, b = 2
  swapValues(&a, &b)
  print(a, b) // 2, 1
  ```

## 擴展泛型類型
- **範例說明**：擴展泛型類型（例如：陣列），並添加自定義方法。
  ```swift
  extension Array where Element: Numeric {
      func sum() -> Element {
          return self.reduce(0, +)
      }
  }

  let numbers = [1, 2, 3, 4, 5]
  print(numbers.sum()) // 15
  ```

## 協議中的關聯類型
- **範例說明**：定義一個帶有關聯類型的協議，並實現泛型協議。
  ```swift
  protocol Container {
      associatedtype Item
      var items: [Item] { get }
      mutating func addItem(_ item: Item)
  }

  struct Stack<Element>: Container {
      var items = [Element]()
      mutating func addItem(_ item: Element) {
          items.append(item)
      }
  }

  var intStack = Stack<Int>()
  intStack.addItem(3)
  ```

## 約束泛型擴展
- **範例說明**：對泛型擴展添加約束。
  ```swift
  extension Container where Item == Int {
      func sum() -> Int {
          return items.reduce(0, +)
      }
  }

  var intStack = Stack<Int>()
  intStack.addItem(3)
  intStack.addItem(5)
  print(intStack.sum()) // 8
  ```

## 進階應用：使用泛型協議
- **範例說明**：定義一個泛型協議，並實現多種不同的類型。
  ```swift
  protocol EquatableValue {
      associatedtype ValueType: Equatable
      var value: ValueType { get }
  }

  struct StringValue: EquatableValue {
      var value: String
  }

  struct IntValue: EquatableValue {
      var value: Int
  }
  ```

## 小結
- **泛型的優點**：
  - 代碼重用：避免重複代碼，減少維護成本。
  - 靈活性：允許同一個函數或類型處理多種數據類型。
  - 類型安全：在編譯時確保數據類型的正確性。

# Optionals 可選值

## 介紹
- **定義**：Optionals 表示一個值可能存在也可能不存在。
- **目的**：用來處理那些有可能為 `nil` 的情況，避免程式因為空指標異常而崩潰。

## 基本範例
- **範例說明**：函數接受一個可能為 `nil` 的整數，並將其乘以 2。
  ```swift
  func multiplyByTwo(_ value: Int?) -> Int {
      return (value ?? 0) * 2
  }

  print(multiplyByTwo(nil))  // 0
  print(multiplyByTwo(4))    // 8
  ```

## Optional 判斷與解包
- **範例說明**：使用 `if let` 解包一個 Optional 值。
  ```swift
  let age: Int? = nil
  if let unwrappedAge = age {
      print("Age is \(unwrappedAge)")
  } else {
      print("Age is nil")
  }
  ```

- **Guard 解包**：使用 `guard let` 解包 Optional 值。
  ```swift
  func checkAge(_ age: Int?) {
      guard let unwrappedAge = age else {
          print("Age is nil")
          return
      }
      print("Age is \(unwrappedAge)")
  }

  checkAge(nil)  // "Age is nil"
  checkAge(10)   // "Age is 10"
  ```

## Optional 的比較與操作
- **比較 Optional 值**：可以直接與值進行比較。
  ```swift
  let number: Int? = 10
  if number == 10 {
      print("Number is 10")
  } else {
      print("Number is not 10")
  }
  ```

- **Optional 連鎖**：用來安全地調用 Optional 屬性或方法。
  ```swift
  struct Address {
      var firstLine: String?
  }

  struct Person {
      var name: String
      var address: Address?
  }

  let person = Person(name: "Foo", address: nil)
  if let firstLine = person.address?.firstLine {
      print("Address is \(firstLine)")
  } else {
      print("No address available")
  }
  ```

## Switch 語句處理 Optionals
- **範例說明**：使用 `switch` 語句處理 Optional。
  ```swift
  let someValue: Int? = 42
  switch someValue {
  case .none:
      print("Value is nil")
  case .some(let value):
      print("Value is \(value)")
  }
  ```

## Optional Chaining 與模式匹配
- **範例說明**：使用 `where` 子句進行模式匹配。
  ```swift
  let person = Person(name: "Bar", address: Address(firstLine: "Bar's Address"))
  switch person.address?.firstLine {
  case let firstLine? where firstLine.starts(with: "Bar"):
      print("First line is \(firstLine)")
  case let firstLine?:
      print("First line did not match: \(firstLine)")
  case nil:
      print("Address is nil")
  }
  ```

## 範例：Optionals 和 Guard 使用
- **範例說明**：函數使用 `guard` 來處理 Optional 值。
  ```swift
  func getFullName(firstName: String, lastName: String?) -> String? {
      guard let lastName = lastName else {
          return nil
      }
      return "\(firstName) \(lastName)"
  }

  print(getFullName(firstName: "Foo", lastName: nil))  // nil
  print(getFullName(firstName: "Foo", lastName: "Bar")) // "Foo Bar"
  ```

## 小結
- **Optionals 的優點**：
  - 安全處理：避免空指標異常。
  - 可讀性：程式碼更易讀，能清楚表示哪些值可能為 `nil`。
  - 靈活性：允許開發者處理可選值情況，使程式更加健壯。

# Error Handling 錯誤處理

## 介紹
- **定義**：錯誤處理是讓程式碼能夠在遇到問題時通知調用者。
- **關鍵字**：`throw`、`try`、`do-catch`。

## 定義與捕獲錯誤
- **範例說明**：定義錯誤和捕獲錯誤。
  ```swift
  struct Person {
      var firstName: String?
      var lastName: String?
      
      enum Errors: Error {
          case firstNameIsNil
          case lastNameIsNil
          case bothNamesAreNil
      }

      func getFullName() throws -> String {
          switch (firstName, lastName) {
          case (.none, .none):
              throw Errors.bothNamesAreNil
          case (.none, .some):
              throw Errors.firstNameIsNil
          case (.some, .none):
              throw Errors.lastNameIsNil
          case let (.some(firstName), .some(lastName)):
              return "\(firstName) \(lastName)"
          }
      }
  }

  let foo = Person(firstName: "Foo", lastName: nil)
  do {
      let fullName = try foo.getFullName()
      print(fullName)
  } catch Person.Errors.firstNameIsNil {
      print("First name is nil")
  } catch Person.Errors.lastNameIsNil {
      print("Last name is nil")
  } catch Person.Errors.bothNamesAreNil {
      print("Both names are nil")
  } catch {
      print("Some other error: \(error)")
  }
  ```

## 錯誤類型與捕獲特定錯誤
- **範例說明**：捕獲特定類型的錯誤。
  ```swift
  do {
      let fullName = try foo.getFullName()
      print(fullName)
  } catch is Person.Errors {
      print("Caught a Person.Errors")
  } catch {
      print("Some other error: \(error)")
  }
  ```

## 擲出錯誤的初始化方法
- **範例說明**：在初始化方法中擲出錯誤。
  ```swift
  struct Car {
      let manufacturer: String

      enum Errors: Error {
          case invalidManufacturer
      }

      init(manufacturer: String) throws {
          if manufacturer.isEmpty {
              throw Errors.invalidManufacturer
          }
          self.manufacturer = manufacturer
      }
  }

  do {
      let myCar = try Car(manufacturer: "")
      print(myCar.manufacturer)
  } catch Car.Errors.invalidManufacturer {
      print("Invalid manufacturer")
  } catch {
      print("Some other error: \(error)")
  }
  ```

## 可選的 `try` 語法
- **範例說明**：使用可選的 `try?` 語法。
  ```swift
  if let car = try? Car(manufacturer: "Tesla") {
      print("Success: \(car.manufacturer)")
  } else {
      print("Failed to construct car")
  }
  ```

## `try!` 強制解包
- **範例說明**：使用 `try!` 強制解包。
  ```swift
  let car = try! Car(manufacturer: "Ford")
  print(car.manufacturer)
  ```

## 結果類型 (`Result`)
- **範例說明**：使用 `Result` 類型處理錯誤。
  ```swift
  enum IntegerErrors: Error {
      case noPositiveIntegerBeforeThisValue
  }

  func getPreviousPositiveInteger(from value: Int) -> Result<Int, IntegerErrors> {
      guard value > 0 else {
          return .failure(.noPositiveIntegerBeforeThisValue)
      }
      return .success(value - 1)
  }

  func performGet(for value: Int) {
      switch getPreviousPositiveInteger(from: value) {
      case .success(let previousValue):
          print("Previous value is \(previousValue)")
      case .failure(let error):
          switch error {
          case .noPositiveIntegerBeforeThisValue:
              print("No positive integer before this value")
          }
      }
  }

  performGet(for: 0)
  performGet(for: 2)
  ```

## 捕獲和重新拋出錯誤 (`rethrows`)
- **範例說明**：使用 `rethrows` 語法。
  ```swift
  func performOperation(with function: (Int, Int) throws -> Int, a: Int, b: Int) rethrows {
      try function(a, b)
  }

  enum MathError: Error {
      case divisionByZero
  }

  func divide(_ a: Int, by b: Int) throws -> Int {
      if b == 0 {
          throw MathError.divisionByZero
      }
      return a / b
  }

  do {
      try performOperation(with: divide, a: 10, b: 0)
  } catch MathError.divisionByZero {
      print("Cannot divide by zero")
  } catch {
      print("Some other error: \(error)")
  }
  ```

## 小結
- **錯誤處理的重要性**：確保程式在異常情況下能夠優雅地處理錯誤。
- **多種錯誤處理方式**：
  - `do-catch` 語法
  - `try?` 和 `try!`
  - `Result` 類型
  - `rethrows` 用於重拋錯誤的函數

# Collections 集合

## 介紹
- **定義**：集合是一組相關的數據。
- **常見類型**：陣列（Array）、集合（Set）、字典（Dictionary）。

## 陣列（Array）
- **定義**：有序的數據集合。
- **創建**：
  ```swift
  let numbers = [1, 2, 3, 4]
  ```
- **操作**：
  - 獲取第一個和最後一個元素：
    ```swift
    let first = numbers.first
    let last = numbers.last
    ```
  - 計算元素數量：
    ```swift
    let count = numbers.count
    ```
  - 映射元素：
    ```swift
    let negatedNumbers = numbers.map { $0 * -1 }
    ```

## 可變陣列（Mutable Array）
- **創建**：
  ```swift
  var mutatingNumbers = [0, 1, 2]
  ```
- **操作**：
  - 添加元素：
    ```swift
    mutatingNumbers.append(3)
    ```
  - 插入元素：
    ```swift
    mutatingNumbers.insert(-1, at: 0)
    ```
  - 插入另一個陣列：
    ```swift
    mutatingNumbers.insert(contentsOf: [1, 2], at: 0)
    ```

## 遍歷陣列
- **基本遍歷**：
  ```swift
  for value in numbers {
      print(value)
  }
  ```
- **條件遍歷**：
  ```swift
  for value in numbers where value % 2 == 0 {
      print(value)
  }
  ```

## 映射（Map）
- **映射操作**：
  ```swift
  let doubledNumbers = numbers.map { $0 * 2 }
  let stringNumbers = numbers.map { String($0) }
  ```

## 過濾（Filter）
- **過濾操作**：
  ```swift
  let filteredNumbers = numbers.filter { $0 >= 3 }
  ```

## CompactMap
- **CompactMap 操作**：
  ```swift
  let optionalNumbers: [Int?] = [1, 2, nil, 4]
  let nonNilNumbers = optionalNumbers.compactMap { $0 }
  ```

## 集合（Set）
- **定義**：不包含重複元素的無序集合。
- **創建**：
  ```swift
  let uniqueNumbers: Set = [1, 2, 1, 2, 3]
  ```
- **操作**：
  - 計算元素數量：
    ```swift
    let count = uniqueNumbers.count
    ```
  - CompactMap 操作：
    ```swift
    let myNumbers: Set<Int?> = [1, 2, nil, 4, 5]
    let notNilNumbers = Set(myNumbers.compactMap { $0 })
    ```

## 字典（Dictionary）
- **定義**：鍵值對集合。
- **創建**：
  ```swift
  let userInfo: [String: Any] = [
      "name": "Foo",
      "age": 20,
      "address": [
          "line1": "Address Line 1",
          "postcode": "12345"
      ]
  ]
  ```
- **操作**：
  - 獲取值：
    ```swift
    let name = userInfo["name"]
    let age = userInfo["age"]
    let address = userInfo["address"]
    ```
  - 列出鍵和值：
    ```swift
    let keys = userInfo.keys
    let values = userInfo.values
    ```
  - 遍歷鍵值對：
    ```swift
    for (key, value) in userInfo {
        print("\(key): \(value)")
    }
    ```

## 其他
- **條件遍歷**：
  ```swift
  for (key, value) in userInfo where value is Int {
      print("\(key): \(value)")
  }
  ```
- **多條件遍歷**：
  ```swift
  for (key, value) in userInfo where value is Int && key.count > 2 {
      print("\(key): \(value)")
  }
  ```

## 小結
- **熟練使用集合**：理解和使用陣列、集合和字典是 Swift 開發的重要技能。
- **練習**：通過實踐熟悉各種操作和語法，增強對集合的掌握。

# Equality and Hashing 等值與雜湊

## 介紹
- **等值（Equality）**：判斷兩個對象是否相等。
- **雜湊（Hashing）**：確保對象在集合（Set）中唯一。

## Equatable Protocol
- **定義**：使對象可等值比較。
- **實現**：需實現一個靜態函數 `==`。
  ```swift
  static func ==(lhs: Self, rhs: Self) -> Bool
  ```

## 自動生成 Equatable
- **結構體示例**：
  ```swift
  struct Person: Equatable {
      let id: String
      let name: String
  }
  ```
- **比較示例**：
  ```swift
  let foo1 = Person(id: "1", name: "Foo")
  let foo2 = Person(id: "1", name: "Bar")
  if foo1 == foo2 {
      print("They are equal")
  } else {
      print("They are not equal")
  }
  ```

## 自定義 Equatable
- **自定義相等條件**：
  ```swift
  extension Person {
      static func ==(lhs: Person, rhs: Person) -> Bool {
          return lhs.id == rhs.id
      }
  }
  ```

## 列舉（Enumeration）中的 Equatable
- **自動生成**：
  ```swift
  enum AnimalType: Equatable {
      case dog(breed: String)
      case cat(breed: String)
  }
  ```
- **自定義**：
  ```swift
  extension AnimalType {
      static func ==(lhs: AnimalType, rhs: AnimalType) -> Bool {
          switch (lhs, rhs) {
          case (.dog(let lhsBreed), .dog(let rhsBreed)):
              return lhsBreed == rhsBreed
          case (.cat(let lhsBreed), .cat(let rhsBreed)):
              return lhsBreed == rhsBreed
          default:
              return false
          }
      }
  }
  ```

## Hashable Protocol
- **定義**：使對象可雜湊，通常用於集合（Set）。
- **實現**：需實現 `hash(into:)` 方法。
  ```swift
  func hash(into hasher: inout Hasher)
  ```

## 自動生成 Hashable
- **結構體示例**：
  ```swift
  struct House: Hashable {
      let number: Int
      let numberOfBedrooms: Int
  }
  ```
- **使用示例**：
  ```swift
  let house1 = House(number: 123, numberOfBedrooms: 2)
  let house2 = House(number: 123, numberOfBedrooms: 3)
  print(house1.hashValue)
  print(house2.hashValue)
  ```

## 自定義 Hashable
- **自定義雜湊條件**：
  ```swift
  struct NumberedHouse: Hashable {
      let number: Int
      let numberOfBedrooms: Int

      func hash(into hasher: inout Hasher) {
          hasher.combine(number)
      }

      static func ==(lhs: NumberedHouse, rhs: NumberedHouse) -> Bool {
          return lhs.number == rhs.number
      }
  }
  ```

## 列舉中的 Hashable
- **列舉示例**：
  ```swift
  enum CarPart: Hashable {
      case roof
      case tire
      case trunk
  }

  let uniqueParts: Set<CarPart> = [.roof, .tire, .roof, .trunk]
  ```

- **帶關聯值的列舉**：
  ```swift
  enum HouseType: Hashable {
      case bigHouse(NumberedHouse)
      case smallHouse(NumberedHouse)
  }
  ```

## 集合中的使用
- **示例**：
  ```swift
  let bigHouse1 = HouseType.bigHouse(NumberedHouse(number: 1, numberOfBedrooms: 1))
  let bigHouse2 = HouseType.bigHouse(NumberedHouse(number: 1, numberOfBedrooms: 1))
  let smallHouse1 = HouseType.smallHouse(NumberedHouse(number: 1, numberOfBedrooms: 1))

  let allHouses: Set<HouseType> = [bigHouse1, bigHouse2, smallHouse1]
  print(allHouses.count) // Output: 2
  ```

## 小結
- **Equatable**：用於比較對象是否相等。
- **Hashable**：用於確保對象在集合中唯一。
- **自動生成 vs 自定義**：根據需要選擇使用 Swift 提供的自動生成或自定義實現。
- **實踐**：多練習以加深理解這些概念的應用。

# Custom Operators 自訂運算符

## 介紹
- **自訂運算符**：在 Swift 中可以創建自訂運算符以實現更直觀的操作。
- **運算符類型**：
  - **二元中綴運算符（Binary Infix Operator）**
  - **一元前綴運算符（Unary Prefix Operator）**
  - **一元後綴運算符（Unary Postfix Operator）**

## 二元中綴運算符（Binary Infix Operator）
### 示例
- **示例：合併兩個可選字符串**
  ```swift
  func +(lhs: String?, rhs: String?) -> String? {
      switch (lhs, rhs) {
      case (nil, nil):
          return nil
      case (let left?, nil):
          return left
      case (nil, let right?):
          return right
      case (let left?, let right?):
          return left + right
      }
  }

  let firstName: String? = "Foo"
  let lastName: String? = "Bar"
  let fullName = firstName + lastName // "FooBar"
  ```

## 一元前綴運算符（Unary Prefix Operator）
### 示例
- **示例：將字符串轉換為大寫**
  ```swift
  prefix operator ^

  prefix func ^(value: String) -> String {
      return value.uppercased()
  }

  let lowercaseName = "foobar"
  let uppercaseName = ^lowercaseName // "FOOBAR"
  ```

## 一元後綴運算符（Unary Postfix Operator）
### 示例
- **示例：在字符串前後添加星號**
  ```swift
  postfix operator *

  postfix func *(value: String) -> String {
      return "*** \(value) ***"
  }

  let name = "foobar"
  let starredName = name* // "*** foobar ***"
  ```

## 定義異類型的二元中綴運算符
### 示例
- **示例：合併 `Person` 和 `Family`**
  ```swift
  struct Person {
      let name: String
  }

  struct Family {
      var members: [Person]
  }

  func +(lhs: Person, rhs: Person) -> Family {
      return Family(members: [lhs, rhs])
  }

  func +(lhs: Family, rhs: Person) -> Family {
      var members = lhs.members
      members.append(rhs)
      return Family(members: members)
  }

  func +(lhs: Family, rhs: [Person]) -> Family {
      var members = lhs.members
      members.append(contentsOf: rhs)
      return Family(members: members)
  }

  let mom = Person(name: "Mom")
  let dad = Person(name: "Dad")
  let son = Person(name: "Son")
  let daughter1 = Person(name: "Daughter1")
  let daughter2 = Person(name: "Daughter2")

  let family = mom + dad
  let familyWithSon = family + son
  let familyWithDaughters = familyWithSon + [daughter1, daughter2]

  print(family.members.count) // 2
  print(familyWithSon.members.count) // 3
  print(familyWithDaughters.members.count) // 5
  ```

## 小結
- **創建自訂運算符**：
  - **定義運算符**：使用 `prefix operator`、`postfix operator` 或直接定義二元運算符。
  - **實現運算符**：根據需要實現對應的函數邏輯。
- **運用場景**：
  - **增強可讀性**：使代碼更直觀。
  - **簡化操作**：將常用的操作封裝為運算符。

# 非同步編程（Asynchronous Programming）

## 介紹
- **非同步編程**：允許函數在不立即返回結果的情況下執行。
- **適用於多種語言**：Swift、Dart、Python、Rust 等。

## 基本設定
- **必要匯入**：
  ```swift
  import Foundation
  import PlaygroundSupport
  import Concurrency
  ```
- **保持 Playground 活躍**：
  ```swift
  PlaygroundPage.current.needsIndefiniteExecution = true
  ```

## 基本範例
- **建立簡單的非同步函數**：
  ```swift
  func calculateFullName(firstName: String, lastName: String) async -> String {
      try? await Task.sleep(nanoseconds: 1_000_000_000) // 模擬延遲1秒
      return "\(firstName) \(lastName)"
  }
  ```
- **調用非同步函數**：
  ```swift
  Task {
      let result = await calculateFullName(firstName: "Foo", lastName: "Bar")
      print(result) // 輸出 "Foo Bar"
  }
  ```

## async let 語法
- **定義**：創建子任務，並行執行。
- **示例**：
  ```swift
  async let result1 = calculateFullName(firstName: "Foo", lastName: "Bar")
  let result = await result1
  ```

## 完整範例
### 示例：購買衣物
- **定義衣物類型**：
  ```swift
  enum Clothes {
      case socks, shirt, trousers
  }
  ```
- **非同步購買函數**：
  ```swift
  func buySocks() async throws -> Clothes {
      try await Task.sleep(nanoseconds: 1_000_000_000)
      return .socks
  }

  func buyShirt() async throws -> Clothes {
      try await Task.sleep(nanoseconds: 1_000_000_000)
      return .shirt
  }

  func buyTrousers() async throws -> Clothes {
      try await Task.sleep(nanoseconds: 1_000_000_000)
      return .trousers
  }
  ```
- **建立集合結構**：
  ```swift
  struct Ensemble: CustomDebugStringConvertible {
      let clothes: [Clothes]
      let totalPrice: Double

      var debugDescription: String {
          return "Clothes: \(clothes), Price: \(totalPrice)"
      }
  }
  ```
- **購買整套衣物的非同步函數**：
  ```swift
  func buyWholeEnsemble() async throws -> Ensemble {
      async let socks = buySocks()
      async let shirt = buyShirt()
      async let trousers = buyTrousers()

      let ensemble = Ensemble(
          clothes: [try await socks, try await shirt, try await trousers],
          totalPrice: 200.0
      )
      return ensemble
  }
  ```
- **調用並測試**：
  ```swift
  Task {
      do {
          let ensemble = try await buyWholeEnsemble()
          print("Ensemble: \(ensemble)")
      } catch {
          print("Error: \(error)")
      }
  }
  ```

## 其他注意事項
- **async let 限制**：只能在非同步閉包、非同步函數或任務內使用。
- **示例**：
  ```swift
  func getFullName(delay: Duration, calculator: @escaping () async -> String) async -> String {
      try? await Task.sleep(for: delay)
      return await calculator()
  }

  Task {
      async let name = { "Foo Bar" }
      let result = await getFullName(delay: .seconds(1), calculator: name)
      print(result) // "Foo Bar"
  }
  ```

## 總結
- **Swift 非同步編程**：類似於其他語言（如 JavaScript、Dart 等）的 async 和 await 語法。
- **特點**：
  - **async let**：創建子任務並行執行，但需手動 await。
  - **注意異常處理**：使用 try 和 throws 處理異常。

---

# 關鍵字

- **Playground**：一個可以立即執行並顯示結果的 Swift 環境，方便測試和學習 Swift 語言。
- **Foundation**：一個 Swift 標準庫，包含基本的數據類型和集合等常用功能。
- **值類型 (Value Types)**：在賦值或傳遞時會創建一個副本的數據類型，如結構 (Structures) 和枚舉 (Enumerations)。
- **參考類型 (Reference Types)**：在賦值或傳遞時會傳遞引用而非副本的數據類型，如類 (Classes)。
- **陣列 (Arrays)**：有序的數據集合，可以用索引來存取元素。
- **可變性 (Mutability)**：變數或常數內部數據是否可以更改的屬性。
- **`NSMutArray`**：Objective-C 的可變數組類，允許動態修改數組內容。
- **`NSMutArray`**：Objective-C 的不可變數組類，內容不可修改。
- **內部可變性 (Internal Mutability)**：即使常數本身不可重新賦值，其內部數據仍可以改變。
- **運算子 (Operators)**：特定符號或關鍵字，用於執行操作，如加法、減法、比較等。
- **二元運算子 (Binary Infix Operators)**：操作兩個值的運算子，位於兩個操作數之間，如 `+`、`-`、`*`、`>` 等。
- **一元前置運算子 (Unary Prefix Operators)**：操作單一值的運算子，位於操作數之前，如否定運算子 `!`。
- **一元後置運算子 (Unary Postfix Operators)**：操作單一值的運算子，位於操作數之後，如強制解包運算子 `!`。
- **三元運算子 (Ternary Operator)**：操作三個部分的運算子，用於簡化條件表達式，格式為 `condition ? value_if_true : value_if_false`。
- **整數 (Integer)**：沒有小數部分的數字。
- **常數 (Constants)**：值在宣告後不能改變的變數，用 `let` 關鍵字宣告。
- **變數 (Variables)**：值在宣告後可以改變的變數，用 `var` 關鍵字宣告。
- **字串 (String)**：一連串的字符，用於表示文本。
- **條件運算 (Conditional Operation)**：根據條件判斷執行不同操作，如 `if` 語句。
- **陣列 (Array)**：有序的數據集合，可以存取多個值。
- **`if` 語句**：用於根據條件執行不同程式碼塊的語句。
- **`else` 語句**：與 `if` 語句搭配使用，當 `if` 條件不成立時執行的程式碼塊。
- **`else if` 語句**：在 `if` 語句後面，用於檢查另一個條件。
- **條件運算子 (Conditional Operator)**：用於比較和判斷條件是否為真的運算子，如 `==`、`>`、`<`。
- **邏輯運算子 (Logical Operator)**：用於連接多個條件的運算子，如 `&&`（AND）和 `||`（OR）。
- **比較運算子 (Comparison Operator)**：用於比較兩個值的運算子，如 `==`（等於）、`!=`（不等於）、`>`（大於）、`<`（小於）、`>=`（大於或等於）、`<=`（小於或等於）。
- **邏輯與 (Logical AND)**：用於檢查多個條件是否都為真的運算子，符號為 `&&`。
- **邏輯或 (Logical OR)**：用於檢查多個條件中是否至少有一個為真的運算子，符號為 `||`。
- **括號 (Parentheses)**：用於組織和優先處理運算子的語句。
- **變數內插 (String Interpolation)**：在字串中插入變數的值，用 `\()` 表示。
- **程式分支 (Program Branching)**：根據條件執行不同程式碼塊的流程控制。
- **函式 (Functions)**：一段可重複使用的程式碼，用於執行特定任務。
- **函式語法 (Function Syntax)**：使用 `func` 關鍵字定義函式，如 `func functionName() {}`。
- **駝峰命名法 (Camel Case)**：函式名稱的命名規則，第一個字母小寫，後續單詞的首字母大寫。
- **參數 (Parameters)**：傳遞給函式的輸入值，如 `func functionName(parameter: Type)`。
- **返回值 (Return Value)**：函式執行後返回的值，用箭頭 `->` 表示，如 `func functionName() -> ReturnType {}`。
- **引數 (Arguments)**：呼叫函式時傳入的具體值，如 `functionName(argument)`。
- **內部標籤 (Internal Label)**：函式內部使用的參數名稱，如 `func functionName(internalLabel: Type)`。
- **外部標籤 (External Label)**：函式外部使用的參數名稱，如 `func functionName(externalLabel internalLabel: Type)`。
- **無外部標籤 (No External Label)**：使用 `_` 來忽略參數的外部標籤，如 `func functionName(_ internalLabel: Type)`。
- **預設值 (Default Value)**：參數的預設值，讓函式可以在沒有提供該參數時使用預設值，如 `func functionName(parameter: Type = defaultValue)`。
- **內部函式 (Inner Function)**：定義在另一個函式內部的函式，只能在該外部函式內部調用。
- **可丟棄結果 (Discardable Result)**：標記函式的返回值可以被忽略，用 `@discardableResult` 標記。
- **閉包 (Closures)**：一種特殊的函式，可以捕獲並存取其所在範圍內的變數和常數。
- **閉包 (Closure)**：一種特殊的函式，可以捕獲並存取其所在範圍內的變數和常數，通常作為參數傳遞給其他函式使用。
- **內聯函式 (Inline Function)**：在程式碼中直接定義的函式，不使用 `func` 關鍵字。
- **函式參考 (Function Reference)**：將函式當作值來傳遞或指派給變數。
- **函式型別 (Function Type)**：定義函式接受的參數型別和返回值型別，如 `(Int, Int) -> Int`。
- **Trailing Closure 語法**：當閉包是函式的最後一個參數時，可以將閉包寫在函式呼叫的括號外面，使程式碼更易讀。
- **參數標籤 (Parameter Label)**：用於標識函式參數的名稱，可以是內部標籤（供函式內部使用）和外部標籤（供函式調用時使用）。
- **資料推斷 (Type Inference)**：編譯器自動推斷變數或閉包的型別，而不需要顯式指定。
- **無名參數 (Anonymous Parameters)**：使用 `$` 符號和索引號來引用參數，如 `$0` 代表第一個參數。
- **內嵌函式 (Nested Function)**：定義在另一個函式內部的函式，僅能在其外部函式內部調用。
- **預設參數值 (Default Parameter Value)**：當呼叫函式時未提供參數時使用的預設值。
- **外部標籤 (External Label)**：函式外部使用的參數標籤，用於呼叫函式時標識參數。
- **結構 (Struct)**：一種用來組織和封裝數據的資料結構，在 Swift 中是值類型。
- **屬性 (Property)**：結構內部的變數或常數，用於儲存結構的數據。
- **點標記法 (Dot Notation)**：用於存取結構屬性的方法，語法為 `instance.property`。
- **值類型 (Value Type)**：在賦值或傳遞時會創建一個副本的數據類型，如結構和枚舉。
- **自定初始化函式 (Custom Initializer)**：用來自定義結構實例的初始化邏輯的函式。
- **計算屬性 (Computed Property)**：一種屬性，實際上是一個函式，用於計算和返回一個值。
- **變異函式 (Mutating Function)**：可以修改結構內部屬性的函式，用 `mutating` 關鍵字標識。
- **自定複製函式 (Custom Copying Function)**：用於創建結構實例自定義副本的函式。
- **繼承 (Inheritance)**：一種允許一個類別從另一個類別獲取屬性和方法的功能，但結構不能繼承。
- **列舉 (Enumeration, Enum)**：一種數據類型，用來定義一組相關的值。每個值都是這個列舉類型的合法實例。
- **案例 (Case)**：列舉中的一個特定值。例如，`enum Animals { case cat, dog, rabbit }` 中的 `cat`、`dog` 和 `rabbit` 是列舉的案例。
- **點標記法 (Dot Notation)**：用來存取列舉案例的方法，例如 `Animals.cat`。
- **開關語句 (Switch Statement)**：用來比較列舉案例的一種控制流語句，能夠有效處理多個案例。
- **關聯值 (Associated Value)**：列舉案例可以攜帶的額外信息。例如 `case wwwURL(URL)` 中的 `URL` 是關聯值。
- **原始值 (Raw Value)**：列舉案例可以預設的值。例如 `enum FamilyMember: String { case father = "Dad", mother = "Mom" }`。
- **CaseIterable 協議**：一種協議，使列舉能夠返回所有案例的集合。
- **變異函式 (Mutating Function)**：可以修改列舉內部狀態的函式，用 `mutating` 關鍵字標識。
- **遞歸列舉 (Recursive Enumeration)**：列舉的一種形式，其中列舉案例可以包含其他列舉案例作為關聯值，需要用 `indirect` 關鍵字標識。
- **if case let 語句**：用來解包和比較列舉案例的語法，例如 `if case let .wwwURL(path) = instance`。
- **類別 (Class)**：一種複合數據類型，用來定義一組相關的屬性和方法。與結構不同，類別是引用類型（reference type）。
- **結構 (Struct)**：與類別相似，但它是值類型（value type），這意味著它們在賦值或傳遞時會進行複製。
- **引用類型 (Reference Type)**：當你將類別的實例賦值給另一個變數時，不會創建副本，而是將兩個變數指向同一個記憶體位置。
- **值類型 (Value Type)**：當你將結構的實例賦值給另一個變數時，會創建這個實例的副本。
- **初始化器 (Initializer)**：用來初始化類別或結構實例的方法，使用 `init` 關鍵字。
- **析構器 (Deinitializer)**：當類別實例被釋放時會調用的方法，使用 `deinit` 關鍵字。
- **指定初始化器 (Designated Initializer)**：負責初始化類別所有屬性的初始化器，不能調用其他初始化器。
- **便利初始化器 (Convenience Initializer)**：用來輔助指定初始化器的初始化器，最終需要調用指定初始化器來完成初始化。
- **繼承 (Inheritance)**：一個類別可以繼承另一個類別的屬性和方法，使得子類別擁有父類別的特性。
- **覆寫 (Override)**：子類別可以覆寫父類別的方法或屬性，使用 `override` 關鍵字。
- **變異方法 (Mutating Method)**：結構中的方法，允許修改實例屬性，使用 `mutating` 關鍵字，但類別中的方法不需要這個關鍵字。
- **私有設置 (Private Setter)**：允許屬性在類別內部被修改，但外部無法修改，使用 `private set` 關鍵字。
- **記憶體參照 (Memory Reference)**：當兩個變數指向同一個類別實例時，它們共享同一個記憶體位置。
- **協定 (Protocol)**：在 Swift 中，協定是一組方法和屬性的藍圖，任何符合該協定的類別、結構或列舉都必須實現這些方法和屬性。協定類似於其他語言中的接口（如 Java 中的 interfaces 或 Kotlin 中的 interfaces）。
- **函式宣告 (Function Declaration)**：在協定中僅定義函式的名稱、參數和返回值，而不實現其具體功能。
- **符合 (Conform)**：當一個類別、結構或列舉實現協定中定義的所有方法和屬性時，我們說它符合該協定。
- **擴展 (Extension)**：在 Swift 中，擴展用來為現有的類別、結構、列舉或協定添加新功能，而無需修改原始代碼。
- **默認實現 (Default Implementation)**：在協定的擴展中可以為協定中的方法提供默認實現，這樣符合協定的類別或結構就不必自己實現這些方法。
- **變異方法 (Mutating Method)**：允許結構或列舉中的方法在其內部修改屬性，使用 `mutating` 關鍵字來標示。
- **檢查類型 (Type Checking)**：使用 `is` 關鍵字來檢查某個實例是否符合某個協定或是否為某個類型。
- **類型轉換 (Type Casting)**：使用 `as` 或 `as?` 關鍵字來將一個類型轉換為另一個類型，`as?` 返回一個可選值。
- **任意類型 (Any)**：表示任何類型的實例，包括類別、結構、列舉等。
- **非可變類型 (Immutable Type)**：使用 `let` 關鍵字聲明的常量，一旦賦值後無法更改。
- **可變類型 (Mutable Type)**：使用 `var` 關鍵字聲明的變量，可以在賦值後進行修改。
- **擴展 (Extension)**：在 Swift 中，擴展用來為現有的類別、結構、列舉或協定添加新功能，而無需修改原始代碼。擴展可以添加屬性、方法和初始值設置器等。
- **自我 (Self)**：在擴展中的 `self` 指的是擴展目標的當前實例。例如，在擴展整數 (Int) 時，`self` 代表整數的實例。
- **初始值設置器 (Initializer)**：用於在創建類別或結構的實例時設置其初始值。擴展可以為現有的類別或結構添加新的初始值設置器。
- **便利初始值設置器 (Convenience Initializer)**：一種特殊的初始值設置器，它調用類別的其他設置器來完成實例初始化。在擴展中，可以添加便利初始值設置器來簡化某些初始化過程。
- **協定 (Protocol)**：定義一組方法和屬性的藍圖，任何符合該協定的類別、結構或列舉都必須實現這些方法和屬性。協定可以用擴展來添加默認實現。
- **遵循 (Conformance)**：當一個類別、結構或列舉實現協定中定義的所有方法和屬性時，我們說它遵循該協定。
- **計算屬性 (Computed Property)**：一種屬性，不直接存儲值，而是通過計算獲得值。在協定中可以定義計算屬性。
- **範型 (Generic)**：範型允許類別、結構、函式和協定根據它們使用的類型進行參數化，使其更具靈活性和重用性。範型通常用於定義容器類型（如陣列、字典）等。
- **選擇性 (Optionals)**：表示一個值可能存在也可能不存在。選擇性值可以是某種類型的實際值或 `nil`，表示缺少值。
- **解包 (Unwrapping)**：從選擇性中提取值的過程。使用 `if let` 或 `guard let` 可以安全地解包選擇性值。
- **可選鏈 (Optional Chaining)**：一種語法，用於在鏈式調用中安全地訪問選擇性屬性、方法或下標，即使中間有 `nil`。
- **無 (nil)**：表示缺少值，選擇性的默認值。相當於其他語言中的 `null` 或 `None`。
- **if let**：一種解包選擇性值的語法，用於檢查選擇性值是否存在，如果存在則執行代碼塊內的操作。
- **guard let**：類似於 `if let` 的語法，用於強制解包選擇性值，如果選擇性值為 `nil`，則立即退出當前範圍（通常是函數或循環）。
- **選擇性鏈 (Optional Chaining)**：允許對可能為 `nil` 的值進行安全的屬性、方法和下標訪問。如果中間任一節點為 `nil`，整個鏈式調用將返回 `nil`。
- **switch 語句 (Switch Statement)**：用於模式匹配和處理不同情況的控制結構。在選擇性上下文中，可以用於匹配 `nil` 或某個具體值。
- **模式匹配 (Pattern Matching)**：在 `switch` 語句中使用 `case` 和 `where` 子句進行更細緻的值匹配。
- **選擇性類型 (Optional Type)**：選擇性是 Swift 中的特定類型，由 `Optional` 枚舉實現，具有 `some` 和 `none` 兩個案例。
- **關聯類型 (Associated Type)**：用於在協定中指定泛型參數的一種方法。關聯類型允許協定使用佔位符來表示不同類型，這些類型在實現協定時會被具體化。
- **guard 語句 (Guard Statement)**：用於提前退出範圍的控制結構，當條件不滿足時，立即執行 `else` 子句並退出當前範圍。
- **可選鏈判斷 (Optional Binding)**：通過 `if let` 或 `guard let` 解包選擇性值並判斷其是否存在。
- **錯誤處理 (Error Handling)**：在程序中處理錯誤情況的技術。通過拋出（throwing）和捕捉（catching）錯誤來管理程式中的異常情況。
- **拋出（Throwing）**：當程序遇到錯誤情況時，用於產生一個錯誤。使用 `throw` 關鍵字。
- **捕捉（Catching）**：在程序中捕獲拋出的錯誤。通常使用 `do-catch` 語句來處理錯誤。
- **結果（Result）**：一種表示操作成功或失敗的類型。通常用於返回操作的成功結果或錯誤。
- **重拋出（Rethrows）**：用於表示一個函數會拋出錯誤，因為它內部調用了另一個可能會拋出錯誤的函數。
- **集合 (Collection)**：一組相關的數據，可以是數組（Array）、集合（Set）或字典（Dictionary）。集合中的數據可以通過不同的方法進行操作。
- **數組 (Array)**：一種有序集合，其中的元素可以是任何類型的數據。數組中的元素可以重複，並且是按索引（從零開始）排序的。
- **插入 (Insert)**：將新元素添加到數組中的特定位置。例如，`insert(contentsOf:at:)` 可以將整個數組插入到另一個數組中的特定位置。
- **列舉 (Enumerate)**：遍歷集合中的每個元素。可以使用 `for` 迴圈來遍歷數組或集合中的所有元素。
- **篩選 (Filter)**：從集合中選擇符合特定條件的元素。例如，`filter { $0 > 2 }` 會返回一個僅包含大於 2 的元素的數組。
- **映射 (Map)**：將集合中的每個元素轉換為另一個值，並返回包含這些新值的集合。例如，`map { $0 * 2 }` 將數組中的每個數字乘以 2。
- **壓縮映射 (Compact Map)**：類似於 `map`，但會自動移除結果中的 `nil` 值。例如，`compactMap { $0 }` 會返回一個不包含 `nil` 值的數組。
- **選擇性 (Optional)**：一種類型，表示值可能存在也可能不存在。可以使用 `if let` 或 `guard let` 解包選擇性值。
- **子腳本 (Subscript)**：通過索引或鍵來訪問集合中的元素。例如，`array[0]` 會返回數組的第一個元素，`dictionary["key"]` 會返回字典中對應鍵的值。
- **集合 (Set)**：一種無序集合，其中的元素是唯一的。集合中不允許有重複的元素。
- **字典 (Dictionary)**：一種無序集合，其中的元素是鍵值對。每個鍵都是唯一的，並且每個鍵對應一個值。
- **強制轉型 (Force Casting)**：使用 `as!` 來強制將一個對象轉換為特定類型。如果轉型失敗，會導致運行時錯誤。
- **鍵 (Key)**：在字典中，用於標識值的唯一標識符。
- **值 (Value)**：在字典中，與特定鍵相關聯的數據。
- **哈希表 (Hashable)**：一個協議，表示一個類型可以計算其哈希值。實現這個協議的類型可以用於集合和字典中。
- **相等性 (Equatable)**：一個協議，表示一個類型可以進行相等性比較。實現這個協議的類型可以使用 `==` 來比較兩個實例是否相等。
- **可比較協議 (Equatable protocol)**：Swift中的一個協議，任何符合這個協議的對象必須實現一個靜態方法`==`，該方法用於比較兩個對象是否相等。
- **靜態方法 (Static method)**：屬於類別或結構體本身的方法，而不是屬於具體實例的方法。在這裡，`==`方法是靜態方法。
- **結構體 (Struct)**：Swift中的一種數據類型，用於定義由多個屬性組成的對象。
- **自定義相等性 (Custom equality)**：自定義`==`方法以實現特定的相等性邏輯，而不是使用Swift提供的默認相等性比較。
- **列舉 (Enum)**：Swift中的一種數據類型，用於定義一組相關的值。
- **關聯值 (Associated values)**：列舉中的特定成員可以帶有的值。例如，`enum AnimalType`中的`case dog(breed: String)`。
- **哈希協議 (Hashable protocol)**：Swift中的一個協議，任何符合這個協議的對象必須能夠生成一個哈希值。這些對象可以存儲在集合（Set）或作為字典（Dictionary）的鍵。
- **哈希值 (Hash value)**：用於唯一標識對象的值。哈希值通常是整數，用於快速查找和比較對象。
- **覆寫哈希方法 (Override hash method)**：自定義`hash(into:)`方法，以實現特定的哈希邏輯。
- **覆寫相等性方法 (Override equality method)**：自定義`==`方法，以實現特定的相等性邏輯。
- **Set**：一種集合，只包含唯一的元素。元素不允許重複，且無序。
- **Dictionary**：一種鍵值對集合，每個鍵都是唯一的，用於快速查找對應的值。
- **集合的計數 (Count of a collection)**：集合中元素的數量。
- **列舉的原始值 (Raw value of an enum)**：列舉成員的具體值。這些值可以是整數、字符串或其他數據類型。
- **模式匹配 (Pattern matching)**：一種匹配結構和枚舉成員的技術，用於確定數據是否符合某種模式。
- **自定義運算符 (Custom Operators)**：在 Swift 中，自定義運算符允許開發者定義新的運算符或重新定義現有運算符，以處理特定類型之間的操作。
- **二元中置運算符 (Binary Infix Operator)**：一種運算符，放置在兩個操作數之間，並對這兩個操作數進行操作，例如 `a + b` 中的 `+`。
- **單元前置運算符 (Unary Prefix Operator)**：一種運算符，放置在單個操作數之前，並對該操作數進行操作，例如 `-a` 中的 `-`。
- **單元後置運算符 (Unary Postfix Operator)**：一種運算符，放置在單個操作數之後，並對該操作數進行操作，例如 `a!` 中的 `!`。
- **運算符聲明 (Operator Declaration)**：定義一個新的運算符並指定它是前置、後置或中置運算符，例如 `prefix operator ^^` 或 `infix operator **`。
- **運算符實現 (Operator Implementation)**：為自定義運算符定義具體行為的函數，例如 `func + (left: String?, right: String?) -> String?`。
- **可選 (Optional)**：一種可以包含值或 nil 的類型，表示值可能缺失。
- **函數重載 (Function Overloading)**：定義多個同名函數，但這些函數的參數類型或數量不同。
- **成員 (Member)**：在結構體或類中的屬性或方法，例如 `struct Person { let name: String }` 中的 `name`。
- **追加 (Append)**：在集合或數組中添加新元素的方法，例如 `array.append(element)`。
- **並發 (Concurrency)**：同時執行多個計算任務，以提高程序的效率和性能。Swift 支援並發編程，使得在不同線程上執行任務變得更加容易。
- **異步 (Asynchronous)**：一種編程模式，允許函數在不阻塞當前執行線程的情況下進行操作，並在操作完成後返回結果。異步函數通常會在背景線程中執行任務。
- **函數 (Function)**：一個可重用的代碼塊，通過名稱進行調用。函數可以接受參數並返回結果。
- **異步函數 (Async Function)**：使用 `async` 關鍵字標記的函數，表示該函數是異步的，可以在不阻塞當前線程的情況下執行任務。
- **等待 (Await)**：使用 `await` 關鍵字等待異步操作完成並獲取其結果。在 Swift 中，`await` 關鍵字僅能在異步函數或異步上下文中使用。
- **任務 (Task)**：表示一個並發執行的工作單元。在 Swift 中，可以使用 `Task` 初始化器來創建並執行一個異步任務。
- **異步讓 (Async Let)**：用於創建子任務並並行運行。使用 `async let` 來聲明並啟動一個異步操作。
- **嘗試 (Try)**：用於捕獲和處理異常。當調用可能會拋出異常的函數時，需要使用 `try` 關鍵字。在異步上下文中，通常會與 `await` 結合使用。
- **睡眠 (Sleep)**：暫停當前線程的執行一段時間。在 Swift 中，`Task.sleep` 函數用於異步地暫停當前任務。
- **結構體 (Struct)**：一種值類型，用於定義一組相關的屬性和方法。結構體是 Swift 中的一種重要數據類型。
- **列舉 (Enum)**：用於定義一組相關的值。每個列舉值都是該列舉類型的一個實例。
- **協議 (Protocol)**：定義了一組方法和屬性，其他類型可以採用這些協議來實現相應的行為。
- **調試字符串可轉換 (Custom Debug String Convertible)**：一個協議，用於定義自定義類型在調試時的描述方式。
- **主循環 (Main Loop)**：應用程序的主要運行循環，負責處理事件和調度任務。在需要長時間運行的異步操作中，需要確保主循環持續運行。

