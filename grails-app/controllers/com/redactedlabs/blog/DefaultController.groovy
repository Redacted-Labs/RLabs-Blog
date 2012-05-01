package com.redactedlabs.blog

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

class DefaultController {
	
	def springSecurityService

    def index() { 
		//Return the current User
		def posts = Post.list()
		posts.sort {
			it.dateCreated
		}
		posts = posts.reverse()
		if (posts.size() > 3) {		
			return [user:springSecurityService.getCurrentUser(), posts:posts[0..2]]
		} else {
			return [user:springSecurityService.getCurrentUser(), posts:Post.list()]
		}
	}
	
	def about() {
		//Return the current User
		return [user:springSecurityService.getCurrentUser()]
	}
	
	def contact() {
		//Return the current User
		return [user:springSecurityService.getCurrentUser()]
	}
}
