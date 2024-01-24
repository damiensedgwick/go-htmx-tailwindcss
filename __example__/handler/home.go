package handler

import (
	"github.com/damiensedgwick/go-htmx-tailwindcss/view/home"
	"github.com/labstack/echo/v4"
)

type HomeHandler struct{}

func (h HomeHandler) HandlerHomeShow(c echo.Context) error {
	return render(c, home.Show())
}
