;;; GNU Guix web site
;;; Initially written by sirgazil who waives all
;;; copyright interest on this file.

(define-module (apps base templates irc)
  #:use-module (apps base templates theme)
  #:use-module (apps base types)
  #:use-module (apps base utils)
  #:export (irc-t))


(define (irc-t)
  "Return the Kiwi IRC widget page in SHTML."
  (theme
   #:title '("IRC" "Contact")
   #:description
   "Internet relay chat."
   #:keywords
   '("GNU" "Linux" "Unix" "Free software" "Libre software"
     "Operating system" "GNU Hurd" "GNU Guix package manager"
     "IRC" "chat")
   #:active-menu-item "About"
   #:css (list
	  (guix-url "static/base/css/page.css")
	  (guix-url "static/base/css/irc.css"))
   #:crumbs (list (crumb "Contact" (guix-url "contact/"))
		  (crumb "IRC" "./"))
   #:content
   `(main
     (section
      (@ (class "page"))
      (h2 "IRC")

      (p
       (@ (class "centered-block limit-width"))
       "Join the " (code "#guix") " channel on the "
       (a (@ (href "https://en.wikipedia.org/wiki/Freenode"))
	"Freenode IRC network")
       " to chat with the GNU Guix community or to get help
       in real-time. You can use the chat widget below, or just use
       the "
       (a (@ (href "https://en.wikipedia.org/wiki/Comparison_of_Internet_Relay_Chat_clients"))
	  "IRC client")
       " of your preference. Note that the conversations that happen
       on the " (code "#guix") " channel are logged ("
       (a (@ (href ,guix-irc-log-url)) "browse the log")
       ").")

      (iframe
       (@ (class "chat-widget centered-block")
	  (src "https://kiwiirc.com/client/irc.freenode.net/?nick=PotentialUser-?#guix")))))))
