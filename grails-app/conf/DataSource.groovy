import org.codehaus.groovy.grails.orm.hibernate.cfg.GrailsAnnotationConfiguration

datSource {
	configClass = GrailsAnnotationConfiguration.class
	pooled = false
	driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password = ""
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update"
			driverClassName = "com.mysql.jdbc.Driver"
			url = "jdbc:mysql://localhost/blog"
			username = "root"
			password = ""
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:h2:mem:testDb;MVCC=TRUE"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:h2:prodDb;MVCC=TRUE"
			pooled = true
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=true
				validationQuery="SELECT 1"
			}
		}
	}
}
