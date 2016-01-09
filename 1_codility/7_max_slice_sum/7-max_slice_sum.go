package subarray

func subarray(A []int) int {
  // keep track of:
    // runningMax
    // maxHere
    // simpleMax
    // totalMax

    if len(A) == 0 { return -1 }
    if len(A) == 1 { return A[0] }
    var runningMax int = 0
    var maxHere int
    var simpleMax int = A[0]
    var totalMax int = 0

    for i := 0; i < len(A); i++ {
      maxHere = intMax(runningMax+A[i], A[i])
      runningMax = intMax(maxHere, 0)
      simpleMax = intMax(simpleMax, A[i])
      totalMax = intMax(runningMax, totalMax)
    }

    if totalMax == 0 { return simpleMax }
    return totalMax
}

func intMax(a int, b int) int {
  if a > b {
    return a
  } else {
    return b
  }
}
