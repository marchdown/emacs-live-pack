;;(require 'session)
;;(add-hook after-init-hook 'session-initialize)

(require 'use-package)

;;(setq-local window-management-prefix '(kbd "C-w"))


;; * Edwina
(use-package edwina
  :ensure t
  :config
  (setq
   display-buffer-base-action '(display-buffer-below-selected)
;;   edwina-keymap-prefix window-management-prefix
   )

  (edwina-setup-dwm-keys)
  (edwina-mode 1))

;; * Eyebrowse

(use-package eyebrowse
  :config
  (setq eyebrowse-mode-line-separator " "
        eyebrowse-new-workspace       t
;;        eyebrowse-keymap-prefix window-management-prefix
        )

(eyebrowse-mode t))



;; ;;;;;;;;;;;;;;;;
;; ;; * Desktop

;; (setq desktop-path "~/.live-packs/marchdown-circe-pack/desktops/")
;; (setq desktop-dirname "~/.live-packs/marchdown-circe-pack/desktops/")
;; ;;(setq desktop-path '("~/.emacs.d/"))
;; ;;(setq desktop-dirname "~/.emacs.d/")
;; (setq desktop-base-file-name "emacs-desktop")


;; (add-hook 'desktop-after-read-hook
;; 	  '(lambda ()
;; 	     (setq desktop-dirname-tmp desktop-dirname)
;; 	     (desktop-remove)
;; 	     (setq desktop-dirname desktop-dirname-tmp)))

;; (defun desktop-saved-session ()
;;   (file-exists-p (concat desktop-dirname "/" desktop-base-file-name)))


;; (defun desktop-session-restore ()
;;   "Restore a saved emacs session."
;;   (interactive)
;;   (if (desktop-saved-session)
;;       (desktop-read)
;;     (message "No desktop found.")))


;; (defun desktop-session-save ()
;;   "Save an emacs session."
;;   (interactive)
;;   (if (desktop-saved-session)
;;       (if (y-or-n-p "Overwrite existing desktop? ")
;; 	  (desktop-save-in-desktop-dir)
;; 	(message "Session not saved."))
;;   (desktop-save-in-desktop-dir)))


;; (add-hook 'after-init-hook
;; 	  '(lambda ()
;; 	     (if (saved-session)
;; 		 (if (y-or-n-p "Restore desktop? ")
;; 		     (desktop-session-restore)))))

;; ;;
;; ;; The preceding code treats desktops configurations as artifacts to be explicitly saved and accessed by name
;; ;; it presumes (desktop-save-mode 0)
;; ;;
;; ;;;; sylvain suggest
;; ;; the following code
;; ;; which
;; ;; prevents emacs stumbling after a system crash because of a PID lock
;; ;; it presumes (desktop-save-mode 1)

;;   (defun marchdown/desktop-owner-advice (original &rest args)
;;     (let ((owner (apply original args)))
;;       (if (and owner (/= owner (emacs-pid)))
;;           (and (car (member owner (list-system-processes)))
;;                (let (cmd (attrlist (process-attributes owner)))
;;                  (if (not attrlist) owner
;;                    (dolist (attr attrlist)
;;                      (and (string= "comm" (car attr))
;;                           (setq cmd (car attr))))
;;                    (and cmd (string-match-p "[Ee]macs" cmd) owner))))
;;         owner)))

;;   (advice-add #'desktop-owner :around #'marchdown/desktop-owner-advice)


(setq history-length 40000)

;; (setq desktop-buffers-not-to-save
;;         (concat "\\("
;;                 "^nn\\.a[0-9]+\\|\\.log\\|(ftp)\\|^tags\\|^TAGS"
;;                 "\\|\\.emacs.*\\|\\.diary\\|\\.newsrc-dribble\\|\\.bbdb"
;; 	        "\\)$"))
;; ;;   (add-to-list 'desktop-modes-not-to-save 'dired-mode)
;;    (add-to-list 'desktop-modes-not-to-save 'Info-mode)
;;    (add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
;;    (add-to-list 'desktop-modes-not-to-save 'fundamental-mode)

(desktop-save-mode 1)

;(setq eyebrowse-keymap-prefix window-management-prefix)

;; ;; (defcustom eyebrowse-keymap-prefix window-management-prefix
;; ;;   "Prefix key for key-bindings."
;; ;;   :type 'string
;; ;;   :group 'eyebrowse)
