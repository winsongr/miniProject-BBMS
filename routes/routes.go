package routes

import (
	"goadmin/controllers"
	"goadmin/middlewares"

	"github.com/gofiber/fiber/v2"
)

func Setup(app *fiber.App) {
	app.Post("/register", controllers.Register)
	app.Post("/login", controllers.Login)

	app.Use(middlewares.IsAuthenticated)

	app.Put("/info", controllers.UpdateInfo)
	app.Put("/password", controllers.UpdatePassword)
	
	app.Get("/user", controllers.User)
	app.Post("/logout", controllers.Logout)

	app.Get("/users", controllers.AllUsers)
	app.Post("/users", controllers.CreateUser)
	app.Get("/users/:id", controllers.GetUser)
	app.Put("/users/:id", controllers.UpdateUser)
	app.Delete("/users/:id", controllers.DeleteUser)

	app.Get("/roles", controllers.AllRoles)
	app.Post("/roles", controllers.CreateRole)
	app.Get("/roles/:id", controllers.GetRole)
	app.Put("/roles/:id", controllers.UpdateRole)
	app.Delete("/roles/:id", controllers.DeleteRole)

	app.Get("/permissions", controllers.AllPermission)
	app.Post("/permissionss", controllers.CreatePermission)

	app.Get("/products", controllers.AllProducts)
	app.Post("/products", controllers.CreateProduct)
	app.Get("/products/:id", controllers.GetProduct)
	app.Put("/products/:id", controllers.UpdateProduct)
	app.Delete("/products/:id", controllers.DeleteProduct)

	app.Post("/upload", controllers.Upload)
	app.Static("/uploads", "./uploads")

	app.Get("/orders", controllers.AllOrders)
	app.Post("/export", controllers.Export)
	app.Get("/chart", controllers.Chart)
}
