package main

import (
	"encoding/binary"
	"fmt"
	"math/rand"
	"net"
	"os"
)

func check(e error) {
	if e != nil {
		panic(e)
	}
}

func main() {
	var file *os.File

	if _, err := os.Stat("ip_list"); err == nil {
		file, err = os.Open("ip_list")
		check(err)
	} else {
		file, err = os.Create("ip_list")
		err = os.Truncate("ip_list", 0) //clear file (change its size to 0)
		check(err)
	}

	defer file.Close()

	buf := make([]byte, 4)
	for i := 0; i < 100; i++ {
		ip := rand.Uint32()
		binary.LittleEndian.PutUint32(buf, ip)
		file.WriteString(fmt.Sprintf("%s\n", net.IP(buf)))
	}
}
