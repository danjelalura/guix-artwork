(define-module (www download)
  #:use-module (www shared)
  #:export (download-page))

(define download-page
  `(html (@ (lang "en"))
	 ,(html-page-header "Download")
	 (body
	  ,(html-page-description)
	  ,(html-page-links)
	  (div (@ (id "content-box"))
	       (article
		(h1 "Download")
		(p "As of version 0.8.1, the Guix System Distribution "
		   (a (@ (href "/software/guix/manual/html_node/System-Installation.html"))
		      "can be installed")
		   " on an i686 or x86_64 machine. It uses the "
		   (a (@ (href "/software/linux-libre"))
		      "Linux-Libre")
		   " kernel and the "
		   (a (@ (href "/software/dmd")) "GNU dmd")
		   " init system. Alternately, its package manager, GNU Guix,
can be installed as an additional package manager on top of an installed
Linux-based system.")
		(div (@ (class "text-center"))
		     (div (@ (class "summary-box"))
			  (div (@ (class "text-center"))
			       (img (@ (src "/software/guix/static/base/img/GuixSD-package.png")
				       (alt ""))))
			  (h2 "GuixSD 0.8.2 (i686)")
			  (p "USB installer for machines with the following
minimum system requirements:")
			  (table (tbody (tr (th "Architecture")
					    (td "i686"))
					(tr (th "Processor")
					    (td "1GHz"))
					(tr (th "Memory")
					    (td "512MB"))
					(tr (th "Hard Drive")
					    (td "5GB"))))
			  (p (@ (class "text-center"))
			     (a (@ (href "#")
				   (class "hlink-yellow-boxed"))
				"DOWNLOAD")
			     (br)
			     "(140MB approx.)"
			     (br)
			     (a (@ (href "#")) "Get signature"))
			  (p "See the "
			     (a (@ (href "/software/guix/manual/html_node/System-Installation.html"))
				"installation instructions")
			     " from the manual.")
			  (p "Alternative download methods: "
			     (a (@ (href "#")) "torrent")
			     "."))
		     (div (@ (class "summary-box"))
			  (div (@ (class "text-center"))
			       (img (@ (src "/software/guix/static/base/img/GuixSD-package.png")
				       (alt ""))))
			  (h2 "GuixSD 0.8.2 (x86_64)")
			  (p "USB installer for machines with the following
minimum system requirements:")
			  (table (tbody (tr (th "Architecture")
					    (td "x86_64"))
					(tr (th "Processor")
					    (td "1GHz"))
					(tr (th "Memory")
					    (td "512MB"))
					(tr (th "Hard Drive")
					    (td "5GB"))))
			  (p (@ (class "text-center"))
			     (a (@ (href "#")
				   (class "hlink-yellow-boxed"))
				"DOWNLOAD")
			     (br)
			     "(144MB approx.)"
			     (br)
			     (a (@ (href "#")) "Get signature"))
			  (p "See the "
			     (a (@ (href "/software/guix/manual/html_node/System-Installation.html"))
				"installation instructions")
			     " from the manual.")
			  (p "Alternative download methods: "
			     (a (@ (href "#")) "torrent")
			     "."))
		     (div (@ (class "summary-box"))
			  (div (@ (class "text-center"))
			       (img (@ (src "/software/guix/static/base/img/Guix-package.png")
				       (alt ""))))
			  (h2 "GNU Guix 0.8.2")
			  (p "Archive distribution to install from source on
machines with the following minimum system requirements:")
			  (table (tbody (tr (th "Architecture")
					    (td "i686, x86_64, mips64el, or armv7"))
					(tr (th "Processor")
					    (td "1GHz"))
					(tr (th "Memory")
					    (td "512MB"))
					(tr (th "Hard Drive")
					    (td "5GB"))))
			  (p (@ (class "text-center"))
			     (a (@ (href "#")
				   (class "hlink-yellow-boxed"))
				"DOWNLOAD")
			     (br)
			     "(7.7MB approx.)"
			     (br)
			     (a (@ (href "#")) "Get signature"))
			  (p "See the "
			     (a (@ (href "/software/guix/manual/html_node/System-Installation.html"))
				" installation instructions")
			     " from the manual.")
			  (p "Alternative download methods: "
			     (a (@ (href "#")) "torrent")
			     ". ")))
		(p "Source code for the Guix System Distribution USB
installation images as well as GNU Guix can be found on the GNU ftp server for "
		   (em "alpha")
		   " releases: "
		   (a (@ (href "http://alpha.gnu.org/gnu/guix/"))
		      "http://alpha.gnu.org/gnu/guix/")
		   " (via HTTP) and "
		   (a (@ (href "ftp://alpha.gnu.org/gnu/guix/"))
		      "ftp://alpha.gnu.org/gnu/guix/")
		   " (via FTP). ")))
	  ,(html-page-footer))))
