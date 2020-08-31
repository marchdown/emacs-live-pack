;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "package.el")
                                        ;(live-load-config-file "bindings.el")
(live-load-config-file "registers.el")
(live-load-config-file "session-management.el")

(toggle-frame-fullscreen)
