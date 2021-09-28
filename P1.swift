func nrt(n: Int) {
  for i in 0...n-1 {
    for j in 0...i {
      print("\(j+1) ", terminator: "")
    } 
    print()
  }
}

func snrt(n: Int) {
  var k=1
  for i in 0...n-1 {
    for j in 0...i {
      print("\(k)   ", terminator: "")
      k+=1
    } 
    print()
  }
}

func pt(n: Int) {
  var a = [[Int]]()
  
  for i in 0...n-1 {
    var b = [Int]()
    
    for j in 0...i {
      if j==i || j==0 {
        b.append(1)
      }
      else if i>1 {
        b.append(a[i-1][j-1]+a[i-1][j])
      }
    } 
    a.append(b)

    for k in 0...n-i {
      print(" ", terminator: " ")
    }
    for j in 0...i {
      print("\(a[i][j])   ", terminator: "")
    } 
    print()
  }
}

print("1. Number Right Triangle")
print("2. Sequential Number Right Triangle")
print("3. Pascal Triangle")
print("Choose any Triangle (1/2/3) :: ")
var ch = Int(readLine()!) ?? 0

switch(ch) {
  case 1:
    print("Enter Number of the ROWS ::")
    let no = Int(readLine()!) ?? 0
    nrt(n: no) 
    
  case 2:
    print("Enter Number of the ROWS ::")
    let no = Int(readLine()!) ?? 0
    snrt(n: no) 
    
  case 3:
    print("Enter Number of the ROWS ::")
    let no = Int(readLine()!) ?? 0
    pt(n: no) 
    
  default:
    print("Invalid Choice....")
}