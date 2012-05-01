package com.redactedlabs.blog

class Post {

	User author
	String title
	String content
	Date dateCreated
	
    static constraints = {

    }
	
	static mapping = {
		content type: 'text'
		title type: 'text'
	 }
}
