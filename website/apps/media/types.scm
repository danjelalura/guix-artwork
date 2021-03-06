;;; GNU Guix web site
;;; Copyright © 2019 Florian Pelz <pelzflorian@pelzflorian.de>
;;; Initially written by sirgazil who waives all
;;; copyright interest on this file.

(define-module (apps media types)
  #:use-module (srfi srfi-9)
  #:export (screenshot
            screenshot?
            screenshot-caption
            screenshot-image
            screenshot-preview
            screenshot-slug
            screenshot-title
            track
            track?
            track-label
            track-kind
            track-lang
            track-url
            video
            video?
            video-description
            video-last-updated
            video-poster
            video-title
            video-url))


;;;
;;; Data types.
;;;

;;; Screenshot (record type)
;;; ------------------------
;;;
;;; A screenshot object represents an image of a software view seen
;;; on a screen.
;;;
;;; Objects of this type can be created with the "screenshot"
;;; procedure (see Helper procedures below).
;;;
;;; Fields:
;;;
;;; title (string)
;;;   A title for the screenshot.
;;;
;;; slug (string)
;;;     Slug-like URL name for the screenshot. For example:
;;;     gnome-3-desktop.
;;;
;;; image (string)
;;;   A URL to the full size image of the screenshot.
;;;
;;; preview (string)
;;;   A URL to a small size image of the screenshot.
;;;
;;; caption (string)
;;;   A short text describing the screenshot.
;;;
(define-record-type <screenshot>
  (make-screenshot title slug image preview caption)
  screenshot?
  (title screenshot-title)
  (slug screenshot-slug)
  (image screenshot-image)
  (preview screenshot-preview)
  (caption screenshot-caption))

;;; Helper procedures.

(define* (screenshot #:key title slug image preview caption)
  "Return a <screenshot> object with the given attributes."
  (make-screenshot title slug image preview caption))


;;;
;;; Data types.
;;;

;;; Track (record type)
;;; ---------------------
;;;
;;; A track object represents subtitles, closed captions or similar
;;; text tracks for HTML video.  Track objects are mapped to HTML
;;; <track> elements.
;;;
;;; Objects of this type can be created with the "track" procedure as
;;; well (see Helper procedures below).
;;;
;;; Fields:
;;;
;;; label (string)
;;;   The title of the track.  For example: "English"
;;;
;;; kind (string)
;;;   The kind of track as a string.  For example "subtitles" or "captions".
;;;
;;; lang (string)
;;;   A language code.
;;;
;;; url (string)
;;;   A URL to the track file.
;;;
(define-record-type <track>
  (make-track label kind lang url)
  track?
  (label track-label)
  (kind track-kind)
  (lang track-lang)
  (url track-url))

;;; Helper procedures.

(define* (track #:key (label "") (kind "") (lang "") (url ""))
  "Return a <track> object with the given attributes."
  (make-track label kind lang url))


;;;
;;; Data types.
;;;

;;; Video (record type)
;;; ---------------------
;;;
;;; A video object represents something viewable in an HTML video
;;; element and accessible from the videos list on the website.
;;;
;;; Objects of this type can be created with the "video" procedure as
;;; well (see Helper procedures below).
;;;
;;; Fields:
;;;
;;; title (string)
;;;   The full name of the video.  For example:
;;;   "Everyday use of GNU Guix, Part One".
;;;
;;; description (SXML)
;;;   A short description.  For example:
;;; '(p "How to install packages and how to manage software package
;;; generations.")
;;;
;;; url (string)
;;;   A URL to the video file.
;;;
;;; poster (string)
;;;   A URL to a representative preview image for the video.
;;;
;;; tracks (list of <track> objects)
;;;   A URL to the closed captions or subtitles track for the video.
;;;   FIXME: This field is not used anywhere yet.
;;;
;;; last-updated (date)
;;;   Optional SRFI-19 upload date of the video file's most recent
;;;   version, or #f.  This should be specified for videos that
;;;   possibly become outdated over time such as documentation videos.
;;;
(define-record-type <video>
  (make-video title description url poster tracks last-updated)
  video?
  (title video-title)
  (description video-description)
  (url video-url)
  (poster video-poster)
  (tracks video-tracks)
  (last-updated video-last-updated))

;;; Helper procedures.

(define* (video #:key (title "") (description "")
                (url "") (poster "") (tracks '()) (last-updated #f))
  "Return a <video> object with the given attributes."
  (make-video title description url poster tracks last-updated))
