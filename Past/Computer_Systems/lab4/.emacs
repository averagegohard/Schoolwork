;;; EMACS CONFIGURATION FILE
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(inhibit-startup-screen t)
 '(show-paren-mode t))

;;; C CODE FORMATTING (c-mode defines)
(setq-default
        c-default-style "linux"
        c-basic-offset 4
        c-indent-tabs-mode t     ; Pressing TAB should cause indentation
        c-indent-level 4         ; A TAB is equivilent to four spaces
        c-argdecl-indent 0       ; Do not indent argument decl's extra
        c-tab-always-indent t
        backward-delete-function nil) ; DO NOT expand tabs when deleting

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 97 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
  '(font-lock-comment-face ((t (:foreground "MediumAquamarine"))))
  '(font-lock-constant-face ((((class color) (background dark)) (:bold t :foreground "DarkOrchid"))))
  '(font-lock-doc-string-face ((t (:foreground "green2"))))
  '(font-lock-function-name-face ((t (:foreground "SkyBlue"))))
  '(font-lock-keyword-face ((t (:bold t :foreground "CornflowerBlue"))))
  '(font-lock-preprocessor-face ((t (:italic nil :foreground "CornFlowerBlue"))))
  '(font-lock-reference-face ((t (:foreground "DodgerBlue"))))
  '(font-lock-string-face ((t (:foreground "LimeGreen"))))
)
