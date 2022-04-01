package middlewares

import (
	"errors"
	"fmt"
	"goadmin/database"
	"goadmin/models"
	"goadmin/util"
	"strconv"

	"github.com/gofiber/fiber/v2"
)

func IsAuthorised(c *fiber.Ctx, page string) error {
	cookie := c.Cookies("jwt")
	Id, err := util.ParseJwt(cookie)
	fmt.Println(Id)
	if err != nil {
		return err
	}
	userId, _ := strconv.Atoi(Id)

	user := models.User{
		Id: uint(userId),
	}
	database.DB.Preload("Role").Find(&user)

	role := models.Role{
		Id: user.RoleId,
	}
	database.DB.Preload("Permissions").Find(&role)
	if c.Method() == "GET" {
		for _, permission := range role.Permissions {
			if permission.Name == "view_"+page || permission.Name == "edit_"+page {
				return nil
			}
		}
	} else {
		for _, permission := range role.Permissions {
			fmt.Println(permission.Name)
			if permission.Name == "edit_"+page {
				return nil
			}
		}
	}
	c.Status(fiber.StatusUnauthorized)
	return errors.New("You Dont Have permission here !")
}
