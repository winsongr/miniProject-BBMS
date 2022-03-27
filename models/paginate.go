package models

import (
	"goadmin/database"
	"math"

	"github.com/gofiber/fiber"
	"github.com/gofiber/fiber/v2"
)

func Paginate(page int) fiber.Map {
	limit := 5
	offset := (page - 1) * limit
	var total int64
	var products []Product
	database.DB.Offset(offset).Limit(limit).Find(&products)
	database.DB.Model(&Product{}).Count(&total)
	return fiber.Map{
		"data": products,
		"meta": fiber.Map{
			"total":     total,
			"page":      page,
			"last_page": math.Ceil(float64(int(total) / limit)),
		},
	}
}
