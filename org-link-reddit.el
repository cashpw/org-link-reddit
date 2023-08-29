;;; org-link-reddit.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023 Cash Weaver
;;
;; Author: Cash Weaver <cashbweaver@gmail.com>
;; Maintainer: Cash Weaver <cashbweaver@gmail.com>
;; Created: August 29, 2023
;; Modified: August 29, 2023
;; Version: 0.0.1
;; Homepage: https://github.com/cashweaver/org-link-reddit
;; Package-Requires: ((emacs "27.1"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  This library provides an reddit link in org-mode.
;;
;;; Code:

(defcustom org-link-reddit-name
  "reddit"
  "Link name."
  :group 'org-link-reddit
  :type 'string
  :safe #'stringp)

(defcustom org-link-reddit-url-base
  "https://reddit.com/"
  "The URL of reddit."
  :group 'org-link-reddit
  :type 'string
  :safe #'stringp)

(org-link-set-parameters
 "reddit"
 :follow (org-link-base-open-fn-builder org-link-reddit-url-base)
 :export (org-link-base-export-fn-builder org-link-reddit-url-base))


(provide 'org-link-reddit)
;;; org-link-stackoverflow.el ends here
