package handler

import (
	clicktoedit "github.com/damiensedgwick/go-htmx-tailwindcss/view/click-to-edit"
	"github.com/labstack/echo/v4"
)

type ClickToEditHandler struct{}

func (h ClickToEditHandler) HandlerClickToEditShow(c echo.Context) error {
	return render(c, clicktoedit.Show())
}

func (h ClickToEditHandler) HandlerClickToEditEdit(c echo.Context) error {
	return render(c, clicktoedit.Edit())
}
