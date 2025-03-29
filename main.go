/*
 * @Author: zzh weiersili2021@163.com
 * @Date: 2025-03-27 16:02:43
 * @LastEditors: zzh weiersili2021@163.com
 * @LastEditTime: 2025-03-27 19:32:45
 * @FilePath: /InternProject/main.go
 * @Description: 函数入口
 */
package main

import (
	"context"
	"fmt"
	"log"
	"os"

	"github.com/jackc/pgx/v5/pgxpool"
)

const database_url = "postgres://postgres:123456@localhost:5432/postgres"

func main() {
	dbpool, err := pgxpool.New((context.Background()), database_url)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(context.Background())
	defer dbpool.Close()

	var greeting string
	err = dbpool.QueryRow(context.Background(), "select 'hello world'").Scan(&greeting)
	if err != nil {
		fmt.Fprintf(os.Stderr, "QueryRow failed: %v\n", err)
		os.Exit(1)
	}
	fmt.Println(greeting)
}
