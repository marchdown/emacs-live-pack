;;(require 'session)
;;(add-hook after-init-hook 'session-initialize)

(require 'use-package)

;;(setq-local window-management-prefix '(kbd "C-w"))

(use-package edwina
  :ensure t
  :config
  (setq
   display-buffer-base-action '(display-buffer-below-selected)
;;   edwina-keymap-prefix window-management-prefix
   )

  (edwina-setup-dwm-keys)
  (edwina-mode 1))

(use-package eyebrowse
  :config
  (setq eyebrowse-mode-line-separator " "
        eyebrowse-new-workspace       t
;;        eyebrowse-keymap-prefix window-management-prefix
        )

(eyebrowse-mode t))


(desktop-save-mode 1)


;;; provides


;(setq eyebrowse-keymap-prefix window-management-prefix)


;; ;; (defcustom eyebrowse-keymap-prefix window-management-prefix
;; ;;   "Prefix key for key-bindings."
;; ;;   :type 'string
;; ;;   :group 'eyebrowse)
