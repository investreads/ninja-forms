<VirtualHost *:80>
	ServerName ninjaforms.test
	DocumentRoot /var/www/html
	ErrorLog /tmp/error.log
	<Directory "/var/www/html">
	Options +Includes
	Options +FollowSymLinks -Indexes

	# Include Below For Testing Apache Ultimate Bad Bot blocker - Disabled For Now
	Include /etc/apache2/custom.d/globalblacklist.conf

	# Setup WordPress Rewrites - Disabled For Now
	#<IfModule mod_rewrite.c>
		#RewriteEngine On
		#RewriteBase /
		#RewriteRule ^index\.php$ - [L]
		#RewriteCond %{REQUEST_FILENAME} !-f
		#RewriteCond %{REQUEST_FILENAME} !-d
		#RewriteRule . /index.php [L]
		## END WordPress ##
		#</IfModule>

	</Directory>
</VirtualHost>