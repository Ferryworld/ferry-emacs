;;(setq linsee_path "/var/fpwork/xifu/emacs_cfg/")
;;(setq linsee_path "/var/fpwork/xifu/ferry-emacs/")
;;(setq linsee_path "~/")
;;(setq load-path (cons (concat linsee_path ".emacs.d/elisp") load-path))
;;(setq user-init-file (or load-file-name (concat linsee_path ".emacs.d/init.el")))
;;(setq user-emacs-directory (file-name-directory (concat linsee_path ".emacs.d/")))
;;(load (concat linsee_path ".emacs.d/init.el"))

(setq user-full-name "Ferry")
(setq user-mail-address "xiaoqiang.fu@gmail.com")
(setq bookmark-default-file "~.emacs.d/.emacs.bmk")
(defadvice bookmark-jump (after bookmark-jump activate)
  (let ((latest (bookmark-get-bookmark bookmark)))
    (setq bookmark-alist (delq latest bookmark-alist))
    (add-to-list 'bookmark-alist latest)))
(setq load-path (cons (concat linsee_path ".emacs.d/elisp") load-path))
;;(setq load-path (cons "/usr/local/share/24.4/" load-path))

(add-to-list 'Info-default-directory-list "~/local/info/")
;; (setq gnus-init-file (concat linsee_path "/.emacs.d/elisp/fxq-gnus.el"))
(load "fxq-basic-config")
(load "fxq-language")
(load "fxq-calendar")
(load "fxq-folding")
;;(load "fxq-ido")
;;(load "fxq-dictionary")
(load "fxq-function")
;;(load "fxq-mew")
;; (load "fxq-w3m")
;;(load "fxq-erc")
(load "fxq-dired")
(load "fxq-mode")
(load "fxq-key-bindings")
;; (load "fxq-tnsdl")
;; (load "fxq-robot-mode")
;; (load "fxq-python-mode")
;; (load "fxq-ipython-mode")
;; (load "fxq-psvn");;SVN(SubVersion) plugin
;; (load "fxq-plm");;PL/M highlight
;;(load "color-theme")
(load "ascii-table")
(load "hide_comnt")
;; add hide_comnt.el by Ferry on 11/24/2016
(require 'hide-comnt)

;;(add-to-list 'load-path (concat linsee_path "/.emacs.d/elisp/go-mode.el"))
;;(load "go-mode")
;;(require 'go-mode-autoloads)
;;(defun auto-complete-for-go ()
;;  (auto-complete-mode 1))
;;(add-hook 'go-mode-hook 'auto-complete-for-go)
;;
;;(add-to-list 'load-path (concat linsee_path "/.emacs.d/elisp/gocode/emacs"))
;;(with-eval-after-load 'go-mode
;;  (require 'go-autocomplete))
;;(require 'auto-complete-config)
;;(ac-config-default)

;;(autoload 'yang-mode "yang-mode" "Major mode for editing YANG modules." t)
;;(add-to-list 'auto-mode-alist '("\\.yang$" . yang-mode))
;;    (defun show-onelevel ()
;;      "show entry and children in outline mode"
;;      (interactive)
;;      (show-entry)
;;      (show-children))
;;
;;    (defun my-outline-bindings ()
;;      "sets shortcut bindings for outline minor mode"
;;      (interactive)
;;      (local-set-key [?\C-,] 'hide-body)
;;      (local-set-key [?\C-.] 'show-all)
;;      (local-set-key [C-up] 'outline-previous-visible-heading)
;;      (local-set-key [C-down] 'outline-next-visible-heading)
;;      (local-set-key [C-left] 'hide-subtree)
;;      (local-set-key [C-right] 'show-onelevel)
;;      (local-set-key [M-up] 'outline-backward-same-level)
;;      (local-set-key [M-down] 'outline-forward-same-level)
;;      (local-set-key [M-left] 'hide-subtree)
;;      (local-set-key [M-right] 'show-subtree))
;;
;;    (add-hook
;;     'outline-minor-mode-hook
;;     'my-outline-bindings)
;;
;;    (defconst sort-of-yang-identifier-regexp "[-a-zA-Z0-9_\\.:]*")
;;
;;    (add-hook
;;     'yang-mode-hook
;;     '(lambda ()
;;        (outline-minor-mode)
;;        (setq outline-regexp
;;            (concat "^ *" sort-of-yang-identifier-regexp " *"
;;                    sort-of-yang-identifier-regexp
;;                    " *{"))))

(setq load-path (cons (expand-file-name (concat linsee_path ".emacs.d/elisp/")) load-path))
(require 'cmake-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.50")
 '(helm-git-grep-base-directory 'root)
 '(magit-log-section-arguments '("-n256" "--decorate"))
 '(markdown-command "/usr/bin/pandoc")
 '(org-agenda-files
   (quote
    ("~/history_files/TimeQuadrant.org" "~/history_files/FerrySecret.org" "~/history_files/5G.org" "~/history_files/RF.org")))
 '(package-selected-packages
   '(bitbake repo auto-org-md org-ref cquery json-mode company-tabnine highlight-parentheses markdown-mode highlight-symbol org-onenote htmlize epresent ob-diagrams org-babel-eval-in-repl babel plantuml-mode adoc-mode ox-asciidoc ag helm-etags-plus pygen pyfmt elpygen groovy-mode auto-complete-clang auto-complete ahg projectile-codesearch ecb helm-projectile helm-swoop yaml-mode elpy soap-client ox-jira org-jira jira company-c-headers helm-ag multiple-cursors term+ shell-command multi-line multishell multi-term magit-imerge helm-bm helm-ack helm-R helm-company helm-c-yasnippet helm-cscope helm-git-grep helm-git-files helm-git bash-completion function-args stickyfunc-enhance magit-find-file ggtags general bm anzu clean-aindent-mode counsel-projectile company counsel dtrt-indent iedit undo-tree volatile-highlights ws-butler yasnippet-snippets yasnippet zygospore helm-gtags use-package s helm))
 '(projectile-globally-ignored-files '("GPATH" "cscope.*" "*TAGS")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq package-user-dir (concat linsee_path ".emacs.d/elpa"))

(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path (concat linsee_path "/.emacs.d/custom"))

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  (require 'setup-helm-gtags)
  )

(load "iedit")
(require 'iedit)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)

(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(global-highlight-changes-mode t)
;; (add-hook 'text-mode-hook 'highlight-symbol-mode)
;; (add-hook 'c-mode-hook 'highlight-symbol-mode)
;; (add-hook 'c++-mode-hook 'highlight-symbol-mode)
;; ;; (add-hook 'tnsdl-mode-hook 'highlight-symbol-mode)
;; (add-hook 'java-mode-hook 'highlight-symbol-mode)
;; (add-hook 'perl-mode-hook 'highlight-symbol-mode)
;; (add-hook 'php-mode-hook 'highlight-symbol-mode)
;; (add-hook 'emacs-lisp-mode-hook 'highlight-symbol-mode)

(require 'highlight-parentheses)
(global-highlight-parentheses-mode t)
;; (add-hook 'c-mode-hook 'highlight-parentheses-mode)
;; (add-hook 'c++-mode-hook 'highlight-parentheses-mode)
;; ;; (add-hook 'tnsdl-mode-hook 'highlight-parentheses-mode)
;; (add-hook 'java-mode-hook 'highlight-parentheses-mode)
;; (add-hook 'perl-mode-hook 'highlight-parentheses-mode)
;; (add-hook 'php-mode-hook 'highlight-parentheses-mode)
;; (add-hook 'emacs-lisp-mode-hook 'highlight-parentheses-mode)

;; (add-to-list 'load-path "~/.emacs.d/elisp/auto-complete")

(require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories (concat linsee_path "/.emacs.d/elisp/auto-complete/dict"))
;; (add-to-list 'load-path (concat linsee_path "/.emacs.d/elisp/auto-complete-clang"))
(require 'auto-complete-clang)
(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)

(require 'auto-complete-config)
(ac-config-default)

;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)

;; (require 'monky)
;; (setq monky-process-type 'cmdserver)

;; ;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)

(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-z C-g") 'helm-git-grep-at-point)

;; (require 'ggtags)
;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
;;               (ggtags-mode 1))))

;; (define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
;; (define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
;; (define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
;; (define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
;; (define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
;; (define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

;; (define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)
(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
 helm-gtags-suggested-key-mapping t
 )

(require 'helm-gtags)
;; Enable helm-gtags-mode
(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; (setq company-backends (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)


;; (add-to-list 'company-backends 'company-c-headers)
;; (add-to-list 'company-c-headers-path-system "/usr/include/c++/4.8/")

(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)
;; - Trigger completion immediately.
  (setq company-idle-delay 0)
;;
;; - Number the candidates (use M-1, M-2 etc to select completions).
  (setq company-show-numbers t)
;;
;; - Use the tab-and-go frontend.  Allows TAB to select and complete at the same time.
  (company-tng-configure-default)
  (setq company-frontends
        '(company-tng-frontend
          company-pseudo-tooltip-frontend
          company-echo-metadata-frontend))

(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)

(semantic-add-system-include "/usr/local/include")
(semantic-add-system-include "~/linux/include")

(projectile-global-mode)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(global-semantic-idle-summary-mode 1)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)

(require 'stickyfunc-enhance)

(setq-local eldoc-documentation-function #'ggtags-eldoc-function)

;; Package: clean-aindent-mode
(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

;; Package: dtrt-indent
(require 'dtrt-indent)
(dtrt-indent-mode 1)

(setq dtrt-indent-verbosity 0)

;; Package: ws-butler
(require 'ws-butler)
(add-hook 'c-mode-common-hook 'ws-butler-mode)

(require 'yasnippet)
(yas-global-mode 1)


;; (require 'magit-gerrit)
;; 
;; ;; if remote url is not using the default gerrit port and
;; ;; ssh scheme, need to manually set this variable
;; (setq-default magit-gerrit-ssh-creds "xiaoqiang.fu@nokia-sbell.com")
;; ;; if necessary, use an alternative remote instead of 'origin'
;; (setq-default magit-gerrit-remote "gerrit")

(require 'helm-cscope)

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/yasnippet"))
;; (require 'yasnippet)
;; (yas-global-mode 1)

;; ;; (load "yasnippet-bundle")
;; ;; (require 'yasnippet)
;; ;; (setq yas/root-directory (concat linsee_path "/.emacs.d/snippets"))
;; ;; (yas/load-directory yas/root-directory)
;; ;; (yas/global-mode 1)

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/demo-it-master"))
;; (load-library "demo-it")   ;; Load this library of functions

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/git-emacs"))
;; (load-library "git-emacs")

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/dash.el"))
;; (require 'dash)

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/with-editor"))
;; (require 'with-editor)

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/magit/lisp"))
;; (require 'magit)

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/magit-gerrit"))
;; (require 'magit-gerrit)
;; (setq-default magit-gerrit-ssh-creds "xiaoqiang.fu@nokia.com")



;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/pyvenv"))
;; (require 'pyvenv)

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/company-mode"))
;; (require 'company)

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/highlight-indentation"))
;; (require 'highlight-indentation)

;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/elpy"))
;; (require 'elpy)
;; (package-initialize)
;; (elpy-enable)



;; (add-to-list 'load-path (concat linsee_path "/.emacs.d/elisp/bm"))
;; (load "bm")
(require 'bm)
;; (setq bm-marker 'bm-marker-right)
(setq bm-highlight-style 'bm-highlight-only-fringe)
(setq bm-cycle-all-buffers t)
(global-set-key (kbd "<C-f1>") 'bm-toggle)
(global-set-key (kbd "<f1>")   'bm-next)
(global-set-key (kbd "<S-f1>") 'bm-previous)

;; ;; ;;Setting for gnuserv
;; ;; (require 'gnuserv)
;; ;; (gnuserv-start)

;; ;; (setq gnuserv-frame (selected-frame))

;; ;; (setenv "GNUSERV_SHOW_EMACS" "1")


;; ;; ensure abbrev mode is always on
;; (setq-default abbrev-mode t)
;; ;; do not bug me about saving my abbreviations
;; (setq save-abbrevs nil)

;; ;; load up modes I use
;; (require 'cc-mode)
;; (require 'perl-mode)
;; (require 'cperl-mode)
;; (require 'sh-script)
;; (require 'shell)
;; ;;(require 'tex-site) ;; I use AUCTeX
;; ;;(require 'latex)    ;; needed to define LaTeX-mode-hook under AUCTeX
;; ;;(require 'tex)      ;; needed to define TeX-mode-hook under AUCTeX
;; ;; (require 'python)   ;; I use python.el from Emacs CVS, uncomment if you do also
;; ;; (setq auto-mode-alist
;; ;;        (cons '("\\.py$" . python-mode) auto-mode-alist))
;; ;; (setq interpreter-mode-alist
;; ;;        (cons '("python" . python-mode)
;; ;;              interpreter-mode-alist))
;; ;; (autoload 'python-mode "python-mode" "Python editing mode." t)
;; ;;; add these lines if you like color-based syntax highlighting
;; (global-font-lock-mode t)
;; (setq font-lock-maximum-decoration t)

;; ;;(setq ipython-command "D:\Program Files\Python25\Lib\site-packages\IPython")
;; ;; (require 'ipython)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; redo.el
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'redo)
;; (tool-bar-add-item "stock_redo"
;;                    'redo
;;                    'redo
;;                    :help "Redo(control f3)")
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; find-recursive.el
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'find-recursive)

;; ;;(load "maxima")
;; ;;(setq auto-mode-alist (cons '("\\.max" . maxima-mode) auto-mode-alist))
;; ;(setq load-path (cons "D:\Program Files\Maxima-5.12.0\share\maxima\5.12.0\emacs" load-path ))
;; ;;(autoload 'maxima "maxima" "Running Maxima interactively" t)
;; ;;(autoload 'maxima-mode "maxima" "Maxima editing mode" t)

;; ;;add line number for display
;; (require 'wb-line-number)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; psvn.el
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; combined the SVN(SubVersion) in emacs
;; (require 'psvn)


(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
;; (add-hook 'tnsdl-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;;
;;   hs-hide-block                      C-c @ C-h
;;   hs-show-block                      C-c @ C-s
;;   hs-hide-all                        C-c @ C-M-h
;;   hs-show-all                        C-c @ C-M-s
;;   hs-hide-level                      C-c @ C-l
;;   hs-toggle-hiding                   C-c @ C-c
;;   hs-mouse-toggle-hiding             [(shift mouse-2)]
;;   hs-hide-initial-comment-block

;; ;;Add tramp plink method by Ferry on 20120412
;; (require 'tramp)
;; (setq tramp-default-method "sshx")
;; (setq tramp-auto-save-directory "~/.emacs.tmp")
;; (let ((my-tramp-methods nil)
;;       (my-tramp-ssh-method
;;        '("ssh"
;;          (tramp-login-program "ssh")
;;          (tramp-login-args (("%h")
;;                             ("-l" "%u")
;;                             ("-p" "%p")
;;                             ("-e" "none")
;;                             ("-A")))
;;          (tramp-remote-sh "/bin")
;;          (tramp-copy-program nil)
;;          (tramp-copy-args nil)
;;          (tramp-copy-keep-date nil)
;;          (tramp-password-end-of-line nil)
;;          (tramp-gw-args (("-o" "GlobalKnownHostsFile=/dev/null")
;;                          ("-o" "UserKnownHostsFile=/dev/null")
;;                          ("-o" "StrictHostKeyChecking=no")))
;;          (tramp-default-port 22))))
;;   (setq tramp-methods (dolist (elt tramp-methods my-tramp-methods)
;;     (if (string= (car elt) "ssh")
;;         (setq my-tramp-methods (cons my-tramp-ssh-method my-tramp-methods))
;;       (setq my-tramp-methods (cons elt my-tramp-methods))))))

;; ;; add tab mode by Ferry on 20120413
;; (require 'tabbar)
;; (tabbar-mode 1)
;; (define-prefix-command 'lwindow-map)

;; ;; ;; added by Ferry on 07082012 for Aspell function
;; ;; (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
;; ;; (setq ispell-program-name "aspell")
;; ;; (setq ispell-personal-dictionary "D:/emacs/.emacs.d/ispell.el")
;; (require 'ispell)

;; ;; added by Ferry on 30072013 for ignoring different directory and file in special mode
;; ;; (require 'ignoramus)
;; ;; (ignoramus-setup)

;; ;; added by Ferry on 15112013 to use whitespace
;; (require 'whitespace)

;; ;; org-mode 設定
;; (require 'org-crypt)
;; (org-crypt-use-before-save-magic)
;; (setq org-crypt-tag-matcher "secret")
;; (setq org-tags-exclude-from-inheritance (quote ("secret")))
;; (setq org-crypt-key nil)

;; ;; Set default org file to store note
;; (setq org-default-notes-file (concat org-directory "/NOTE.org"))
;; ;; Quickly use C-c r to take note
;; (global-set-key (kbd "C-c r") 'org-capture)
;; ;; Setup capture template
;; (setq org-capture-templates
;;       '(("t" "TODO" entry (file+headline "" "Tasks") "* TODO %?\n %i\n")
;;         ("n" "NOTE" entry (file+headline "" "Tasks") "* NOTE %?\n %i\n %a")))

;; ;;(setq ecb-auto-activate t)

;; ;;(find-file "D:/Current_Task/Source/RCYVSP/Makefile")
;; ;;(find-file "D:/emacs/diary/TimeQuadrant.org")
;; ;;(find-file "D:/Current_Task/Source/Preprocessor_Source/PPLIST_SPM/pplist.var")
;; ;;(find-file "D:/Ferry/temp.txt")

;; ;; (add-to-list 'load-path (concat linsee_path "/.emacs.d/elisp/lyro-vim-mode"))
;; ;; (load "vim")
;; ;; (require 'vim)
;; ;; (vim-mode 1)

;; ;; (load "desktop")
;; ;; (desktop-save-mode)
;; ;; (desktop-read)
;; ;; (custom-set-variables
;; ;;  ;; custom-set-variables was added by Custom.
;; ;;  ;; If you edit it by hand, you could mess it up, so be careful.
;; ;;  ;; Your init file should contain only one such instance.
;; ;;  ;; If there is more than one, they won't work right.
;; ;;  '(column-number-mode t)
;; ;;  '(display-time-mode t)
;; ;;  '(ecb-gzip-setup (quote cons))
;; ;;  '(ecb-options-version "2.40")
;; ;;  '(ecb-source-path (quote ("~/")))
;; ;;  '(ecb-tar-setup (quote cons))
;; ;;  '(ecb-wget-setup (quote cons))
;; ;;  '(git-baseline-alist
;; ;;    (quote
;; ;;     (("/home/vagrant/vsp/repo_vtas/SS_LNXm3ua/" . "origin/feature/VSPi_Feature_porting"))) t)
;; ;;  '(show-paren-mode t)
;; ;;  '(tabbar-buffer-groups-function (quote tabbar-buffer-ignore-groups) t)
;; ;;  '(tabbar-buffer-list-function (quote tabbar-buffer-list) t)
;; ;;  '(tabbar-cycling-scope nil)
;; ;;  '(tabbar-mode t nil (tabbar))
;; ;;  '(transient-mark-mode t))
;; ;; (custom-set-faces
;; ;;  ;; custom-set-faces was added by Custom.
;; ;;  ;; If you edit it by hand, you could mess it up, so be careful.
;; ;;  ;; Your init file should contain only one such instance.
;; ;;  ;; If there is more than one, they won't work right.
;; ;; )


;; (require 'unicad)


;; ;; add paredit by Ferry on 01/09/2016
;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/paredit"))
;; (require 'paredit)
;; (autoload 'enable-paredit-mode "paredit"
;;   "Turn on pseudo-structural editing of Lisp code."
;;   t)
;; (add-hook 'M-mode-hook 'enable-paredit-mode)
;; (eval-after-load 'paredit
;;   '(progn
;;      (define-key paredit-mode-map (kbd "ESC M-A-C-s-)")
;;        'paredit-dwim)))

;; ;; add doxymacs = doxygen+emacs by Ferry on 26/08/2016
;; (add-to-list 'load-path
;;              (concat linsee_path "/.emacs.d/elisp/doxymacs"))
;; (require 'doxymacs)
;; (add-hook 'c-mode-common-hook 'doxymacs-mode)
;; (defun my-doxymacs-font-lock-hook ()
;;   (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
;;       (doxymacs-font-lock)))
;; (add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

;; (require 'recentf)
;; (recentf-mode 1)
;; (setq recentf-max-menu-item 20)

;; bash-completion.el
(require 'bash-completion)
(bash-completion-setup)

;; multi-term.el
(require 'multi-term)
;; (setq multi-term-program "/bin/bash")
(setq multi-term-program "/bin/zsh")


;; multiple-cursors.el
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; org-jira
(setq jiralib-url "https://jira3.int.net.nokia.com")

;; load self define macro
(load-file (concat linsee_path ".emacs.d/keymacros.el"))
(put 'erase-buffer 'disabled nil)

(find-file "~/rfsw")
