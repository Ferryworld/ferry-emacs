(setq default-frame-alist
      (append (list '(foreground-color . "white")
            '(background-color . "black")
            '(background-color . "gray")
            '(border-color . "grey")
            '(mouse-color . "mediumpurple")
            '(cursor-color . "white")
            ;; '(ime-font . (w32-logfont
            ;;            0 16 400 0 nil nil nil
            ;;            128 1 3 49)) ; TrueType
            ;; '(font . "bdf-fontset")    ; BDF
            ;; '(font . "private-fontset");TrueType
            '(width . 80)
            '(height . 35)
            '(top . 50)
            '(left .100))
          default-frame-alist))

(set-face-foreground 'highlight "white")
(set-face-background 'highlight "black")
(set-face-foreground 'region "cyan")
(set-face-background 'region "black")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;;Other spcified color-theme
;;(require 'color-theme)
;;(color-theme-dark-laptop)
;;set the menu colors and font using the menu face.
;;(set-face-font 'menu "7x14")
;;(set-default-font "Courier New-10")
;;(set-default-font "Courier New-12")
;;(set-default-font "10")
;;(set-face-foreground 'menu "white")
;;;Tab is 4
;;Forced set tab width
(setq-default tab-width 4)
(setq-default js2-basic-offset 2
              js-indent-level 2)
(setq css-indent-offset 2)

;; 2012/06/30 Forced replace tab width with some whitespace
(setq-default indent-tabs-mode nil)
;; 2012/07/02 Set default TAGS file
;;(setq tags-file-name "D:/Current_Task/Source/RCY/ALL/TAGS_ALL")

;;/*2007/6/13 added by Fu to set path for cygwin*/
;;  ;; This assumes that Cygwin is installed in C:\cygwin (the
;;  ;; default) and that C:\cygwin\bin is not already in your
;;  ;; Windows Path (it generally should not be).
;;  ;;
;; (setenv "PATH" (concat "d:/emacs/cygwin64/bin;" (getenv "PATH")))
;; (setq exec-path (cons "d:/emacs/cygwin64/bin" exec-path))
;; (setenv "PATH" (concat "C:/APPS/cygwin/bin;" (getenv "PATH")))
;; (setq exec-path (cons "C:/APPS/cygwin/bin" exec-path))
;; (require 'cygwin-mount)
;; (cygwin-mount-activate)
;; (setenv "CYGWIN" "nodosfilewarning")

(defadvice grep-compute-defaults (around grep-compute-defaults-advice-null-device)
  "Use cygwin's /dev/null as the null-device."
  (let ((null-device "/dev/null"))
    ad-do-it))
(ad-activate 'grep-compute-defaults)

;;;Cancel mouse setting
(setq w32-hide-mouse-on-key t)
(setq w32-hide-mouse-timeout 5000)


(require 'w32-browser)
(eval-after-load "dire"
  '(define-key dired-mode-map [f3] (lambda()
                                     (internactive)
                                     (w32-browser
                                      (dired-replace-in-string
                                       "/" "\\"
                                       9dired-get-filename)))))
(setq print-region-function 'w32-print-region)

(setq calendar-load-hook
'(lambda ()
(set-face-foreground 'diary "skyblue")
(set-face-background 'holiday "slate blue")
(set-face-foreground 'holiday "white")))

;;(tool-bar-mode nil)
(tool-bar-mode -1)
;;(menu-bar-mode nil)
(menu-bar-mode -1)
;;(scroll-bar-mode nil)
(scroll-bar-mode -1)

(setq version-control t)
(setq kept-old-versions 2)
(setq kept-new-versions 5)
(setq delete-old-versions t)
(setq backup-directory-alist '(("." . "~/.emacs.d/auto-save-list")))
(setq backup-by-copying t)


(setq fast-lock-cache-directories '("~/.emacs-flc" "."))

(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(try-expand-line
        try-expand-line-all-buffers
        try-expand-list
        try-expand-list-all-buffers
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name
        try-complete-file-name-partially
        try-complete-lisp-symbol
        try-complete-lisp-symbol-partially
        try-expand-whole-kill))

(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")
(add-hook 'write-file-hooks 'time-stamp)

(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)

(minibuffer-electric-default-mode 1)
;; Commented by Ferry on 08/07/2012 for this command is not support in Emacs v24.1
;;(partial-completion-mode 1)
(icomplete-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
(setq resize-mini-windows t)
(setq uniquify-buffer-name-style 'forward)
(setq Man-notify-method 'pushy)
(mouse-avoidance-mode 'animate)
(auto-image-file-mode t)
(auto-compression-mode 1)
(column-number-mode t)
(setq default-fill-column 60)
(blink-cursor-mode -1)
(transient-mark-mode 1)
(show-paren-mode 1)
(mouse-wheel-mode t)
(setq visible-bell -1)
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)
(setq sentence-end "\\([?￡￡?￡?]\\|?-?-\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)
(setq next-line-add-newlines nil)
(setq require-final-newline t)
(setq track-eol t)
(setq-default kill-whole-line t)
(setq kill-ring-max 200)
(setq apropos-do-all t)
(put 'narrow-to-region 'disabled nil)
;;(split-window-vertically)
(setq frame-title-format "%b@Ferry")
(setq x-select-enable-clipboard t)

;;Setting for auctex start
;;(require 'tex-mik)
;;(setq TeX-electric-escape t)

;;(load "auctex.el" nil t t)
;;(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq TeX-auto-untabify t)
(setq LaTeX-document-regexp "document\\|CJK\\*?")
(add-hook 'LaTeX-mode-hook #'LaTeX-install-toolbar)
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
;;Setting for auctex end


;;Setting for ibuffer
(require 'ibuffer)


;;Setting for wb-line-number
(require 'wb-line-number)
(setq truncate-partial-width-windows nil) ; use continuous line
(set-scroll-bar-mode nil)                 ; no scroll bar, even in x-window system

;;Setting for keisen-mode
(if window-system
    (autoload 'keisen-mode "keisen-mouse" "MULE table" t)
  (autoload 'keisen-mode "keisen-mule" "MULE table" t))

;;(setq lrc-lyric-dir "C:\Program Files\TTPlayer\Lyrics")
;;(require 'mpg123)

;;Setting for code-reading
;;(setq load-path (cons "/usr/share/cscope" load-path))
;;(require 'xcscope)
;;(add-hook 'plm-mode-common-hook '(lambda() (require 'xcscope)))
;;(add-hook 'tnsdl-mode-common-hook '(lambda() (require 'xcscope)))
;;---------------------------------------------------
;Added by Ferry on 08/07/2012 for omitting the warning in Emacs 24.1.1
(setq byte-compile-warnings nil)
(add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
;;(load-library "/usr/local/share/emacs/24.5/lisp/cedet")
;;(load-library "/usr/local/share/emacs/24.4/lisp/cedet/cedet")
;;(load-library "/usr/local/share/emacs/24.4/lisp/cedet/contrib/cedet-contrib.el")
;;(load-library "/usr/local/share/emacs/24.4/lisp/cedet/ede/ede.el")
;;(load-library "/usr/local/share/emacs/24.4/lisp/cedet/cogre/cogre.el")
;;(load-library "/usr/local/share/emacs/24.4/lisp/cedet/speedbar/speedbar.el")
;;(load-library "/usr/local/share/emacs/24.4/lisp/cedet/eieio/eieio.el")
;;(semantic-load-enable-code-helpers)
;;(autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t)
;;(autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t)
;;(define-key-after (lookup-key global-map [menu-bar tools])
;;  [speedbar]
;;  '("Speedbar" .
;;	speedbar-frame-mode)
;;  [calendar])
;----------------------------------------------------------
;;ecb
;Added by Ferry on 08/07/2012 for omitting the warning in Emacs 24.1.1
;; (setq stack-trace-on-error nil)
;; (add-to-list 'load-path "/usr/local/share/emacs/24.5/site-lisp/ecb")
;; (load-file "/usr/local/share/emacs/24.5/site-lisp/ecb/ecb.el")
;; (require 'ecb)
;; (setq
;;  ecb-auto-activate t
;;  ecb-tip-of-the-day nil
;;  ecb-tree-indent 4
;;  ecb-windows-height 0.5
;;  ecb-windows-width 0.2
;;  ecb-auto-compatibility-check nil
;;  ecb-version-check nil
;;  inhibit-startup-message t)
;; ;--------------------------------------------
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(column-number-mode t)
;;  '(display-time-mode t)
;;  '(ecb-gzip-setup (quote cons))
;;  '(ecb-options-version "2.40")
;;  '(ecb-source-path (quote ("/home")))
;;  '(ecb-tar-setup (quote cons))
;;  '(ecb-wget-setup (quote cons))
;;  '(show-paren-mode t)
;;  '(tabbar-buffer-groups-function (quote tabbar-buffer-ignore-groups))
;;  '(tabbar-buffer-list-function (quote tabbar-buffer-list))
;;  '(tabbar-cycling-scope nil)
;;  '(tabbar-mode t)
;;  '(transient-mark-mode t))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
;; ;----------------------------------------------
;; (setq semanticdb-project-roots
;;       (list
;;        (expand-file-name "/")))
;; (setq semanticdb-default-save-directory "~/.emacs.d/auto-save-list")
;;

(defun my-indent-or-complete ()
  (interactive)
  (if (looking-at "\\>")
      (hippie-expand nil)
    (indent-for-tab-command))
  )

(global-set-key [(control tab)] 'my-indent-or-complete)


(autoload 'senator-try-expand-semantic "senator")

(setq hippie-expand-try-functions-list
          '(
                senator-try-expand-semantic
                try-expand-dabbrev
                try-expand-dabbrev-visible
                try-expand-dabbrev-all-buffers
                try-expand-dabbrev-from-kill
                try-expand-list
                try-expand-list-all-buffers
                try-expand-line
        try-expand-line-all-buffers
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-whole-kill
        )
)


;;(require 'doxymacs)
;;(add-hook 'c-mode-common-hook 'doxymacs-mode)
;;(add-hook 'c++-mode-common-hook 'doxymacs-mode)


;;Setting for autex
;;(require 'tex-mik)
;;(setq TeX-electric-escape t)


;;Setting for ido, using for searching files
(require 'ido)
(ido-mode t)


;;Setting for GDB
;; (setq gdb-many-windows t)

;; (load-library "multi-gud.el")
;; (load-library "multi-gdb-ui.el")


;;Setting for ahk-mode, AutoHotkey
;; (setq ahk-syntax-directory "D:/Program Files/AutoHotkey/Extras/Editors/Syntax")
;; (add-to-list 'auto-mode-alist '("\\.ahk$" . ahk-mode))
;; (autoload 'ahk-mode "ahk-mode")

;; turn on automatic bracket insertion by pairs. New in emacs 24
(electric-pair-mode 1)

;; case format setting
(c-set-offset 'case-label '+)
