;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(global-unset-key (kbd "C-w")) ;; for use as a window-management prefix.
;; kill with C-x k or C-x ]

;;(set-register ?z '(file . "~/zibaldone-Fall2020.org"))
;;(set-register ?r '(file . "bindings.el"))

;;; functions outline, top-down style:
;;; insert current buffer's associated filename at point
;;; signatures switchboard
;;;

;; redos and undo tree.
