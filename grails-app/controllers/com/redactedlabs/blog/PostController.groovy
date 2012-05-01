package com.redactedlabs.blog

class PostController {

	def springSecurityService
	
	def submit() {
		if(params['title'] && params['content'] ) {
			def currentUser = springSecurityService.getCurrentUser()
			if(currentUser) {
				def post = new Post(title:params['title'], content:params['content'], author:currentUser)
				if(post.validate()) {
					post.save(flush:true)
				}
			}
		}
		redirect (action:'index', controller:'default')
	}
	
	def create() {
		if(springSecurityService.getCurrentUser()) {
			return [user: springSecurityService.getCurrentUser()]
		} else {
			redirect(action:'index', controller:'default')
		}
	}
	
	def delete() {
		if(springSecurityService.getCurrentUser()) {
			return [user: springSecurityService.getCurrentUser(), posts:Post.list()]
		} else {
			redirect(action:'index', controller:'default')
		}
	}
	
	def remove() {
		if(params['id']) {
			def user = springSecurityService.getCurrentUser()
			def post = Post.get(params['id'])
			if (user && post) {
				post.delete()
			}
		}
		redirect(action:'index', controller:'default')
	}
	
	def view() {
		if(params['id']?.isInteger()) {
			def post = Post.get(params['id'])
			return[user:springSecurityService.getCurrentUser(), post:post]
		} else {
			redirect(action:'index', controller:'default')
		}
	}
	
	def showAll() {
		def posts = Post.list()
		return [posts:posts, user:springSecurityService.getCurrentUser()]
	}
}
