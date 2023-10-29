package service

import "github.com/gin-gonic/gin"

func StartHttp() {
	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "sbwy!",
		})
	})
	r.Run("0.0.0.0:80") // listen and serve on 0.0.0.0:8080
}
