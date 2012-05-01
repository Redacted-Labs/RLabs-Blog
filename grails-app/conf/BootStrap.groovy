import com.redactedlabs.blog.User

class BootStrap {
	
    def init = { servletContext ->
		
		def iggy = new User(username:'iggy', password:'1234', enabled:true)
		iggy.save(flush:true)
		println "Made Iggy"
    }
	
    def destroy = {
    
	}
}
