package main

import(
   "fmt"
   "time"
   "os"
   "strconv"
)

func main(){
	
	if len(os.Args) < 2 {
	   fmt.Println("Error!! Please provide integer argument.")
	   os.Exit(1)
	}

	argStr := os.Args[1]
	
	num, err := strconv.Atoi(argStr)

	if err != nil {
	   fmt.Printf("Error: '%s' is not a valid integer.\n", argStr)
	   os.Exit(1)
        }

	go spinner(100 * time.Millisecond)
	 
	fibN := fib(num) //slow calls
        
	fmt.Printf("\r Hello from VoidInfinity and GoLang\n")
	fmt.Printf("\r Fibbonacci(%d) = %d\n", num , fibN)
}

func spinner(delay time.Duration){
	for {
	  for _, r := range `-\|/` {
		fmt.Printf("\r%c", r)
		time.Sleep(delay)
	}
 }
}

func fib(n int) int {
	if n < 2 {
		return n
	}
	return fib(n-1) + fib(n-2)
}
