package main

import (
	"github.com/damiensedgwick/go-htmx-tailwindcss/handler"
	"github.com/labstack/echo/v4"
)

func main() {
	app := echo.New()

	app.Static("/static", "static")

	h := handler.HomeHandler{}
	app.GET("/", h.HandlerHomeShow)

	app.Start(":8080")
}
