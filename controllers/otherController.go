package controllers

import "github.com/gofiber/fiber"

func Other(c *fiber.Ctx)  {
	return c.SendString("other controller")
}