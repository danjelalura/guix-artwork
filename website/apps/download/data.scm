;;; GNU Guix web site
;;; Initially written by sirgazil who waives all
;;; copyright interest on this file.

(define-module (apps download data)
  #:use-module (apps base utils)
  #:use-module (apps download types)
  #:export (system-downloads))


;;;
;;; Data.
;;;


(define system-downloads
  (list
   (download
    #:title (string-append "GNU Guix System " (latest-guix-version))
    #:description
    `(div
      (p "USB/DVD ISO installer of the standalone Guix System."))
    #:image (guix-url "static/base/img/GuixSD-package.png")
    #:base-url (string-append "https://ftp.gnu.org/gnu/guix/guix-system-install-"
			      (latest-guix-version) ".")
    #:variants (list (variant "x86_64" "x86_64-linux.iso.xz")
		     (variant "i686" "i686-linux.iso.xz"))
    #:manual (manual-url "System-Installation.html"))

   (download
    #:title (string-append "GNU Guix " (latest-guix-version) " QEMU Image")
    #:description
    `(div
      (p "QCOW2 virtual machine (VM) image."))
    #:image (guix-url "static/base/img/QEMU-package.png")
    #:base-url (string-append "https://ftp.gnu.org/gnu/guix/guix-system-vm-image-"
			      (latest-guix-version) ".")
    #:variants (list (variant "x86_64" "x86_64-linux.xz"))
    #:manual (manual-url "Running-Guix-in-a-VM.html"))

   (download
    #:title (string-append "GNU Guix " (latest-guix-version) " Binary")
    #:description
    '(p
      "Self-contained tarball providing binaries for Guix and its
      dependencies, to be installed on top of your Linux-based system.")
    #:image (guix-url "static/base/img/Guix-package.png")
    #:base-url (string-append "https://ftp.gnu.org/gnu/guix/guix-binary-"
			      (latest-guix-version) ".")
    #:variants (list (variant "x86_64" "x86_64-linux.tar.xz")
		     (variant "i686" "i686-linux.tar.xz")
		     (variant "armhf" "armhf-linux.tar.xz")
                     (variant "aarch64" "aarch64-linux.tar.xz"))
    #:manual (manual-url "Binary-Installation.html"))

   (download
    #:title (string-append "GNU Guix " (latest-guix-version) " Source")
    #:description '(p "Source code distribution.")
    #:image (guix-url "static/base/img/src-package.png")
    #:base-url (string-append "https://ftp.gnu.org/gnu/guix/guix-"
			      (latest-guix-version) ".")
    #:variants (list (variant "tarball" "tar.gz"))
    #:manual (manual-url "Requirements.html"))))
