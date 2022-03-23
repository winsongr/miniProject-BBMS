package controllers

import (
	"goadmin/database"
	"goadmin/models"

	"github.com/gofiber/fiber/v2"
)

func AllPermission(c *fiber.Ctx) error {
	var permissions []models.Permission
	database.DB.Find(&permissions)
	return c.JSON(permissions)
}
func CreatePermission(c *fiber.Ctx) error {
	var permissions models.Permission
	if err := c.BodyParser(&permissions); err != nil {
		return err
	}

	database.DB.Create(&permissions)
	return c.JSON(permissions)
}
