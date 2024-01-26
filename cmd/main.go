package main

import (
	"github.com/damiensedgwick/go-htmx-tailwindcss/handler"
	"github.com/labstack/echo/v4"
)

func main() {
	app := echo.New()

	app.Static("/static", "static")

	// Home handler
	hh := handler.HomeHandler{}
	app.GET("/", hh.HandlerHomeShow)

	// Click to edit handler
	ch := handler.ClickToEditHandler{}
	app.GET("/click-to-edit/1", ch.HandlerClickToEditShow)
	app.PUT("/click-to-edit/1", ch.HandlerClickToEditShow)
	app.GET("/click-to-edit/1/edit", ch.HandlerClickToEditEdit)

	// Build handler for people to be able to copy and use the project.
	app.GET("/api/v1/build", func(c echo.Context) error {
		return c.File("api/v1/build/build.sh")
	})

	app.Start(":8080")
}
