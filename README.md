# ferry-emacs
Ferryworld emacs configurations

# .emacs.d folder description
## .emacs.d/init.el
Everything is started from linsee_path configuration, select correct path for your own configurations.
Usually, you need to create .emacs in your home directory with the following configurations:
```lisp
(setq linsee_path "your_cloned_path")
(setq load-path (cons (concat linsee_path ".emacs.d/elisp") load-path))
(setq user-init-file (or load-file-name (concat linsee_path ".emacs.d/init.el")))
(setq user-emacs-directory (file-name-directory (concat linsee_path ".emacs.d/")))
(load (concat linsee_path ".emacs.d/init.el"))
```

Please also replace the user-full-name and user-mail-address.

Selected packages are specified in this command, you can add or remove whatever you want.
```
'(package-selected-packages
   '(bitbake repo auto-org-md org-ref cquery json-mode company-tabnine highlight-parentheses markdown-mode highlight-symbol org-onenote htmlize epresent ob-diagrams org-babel-eval-in-repl babel plantuml-mode adoc-mode ox-asciidoc ag helm-etags-plus pygen pyfmt elpygen groovy-mode auto-complete-clang auto-complete ahg projectile-codesearch ecb helm-projectile helm-swoop yaml-mode elpy soap-client ox-jira org-jira jira company-c-headers helm-ag multiple-cursors term+ shell-command multi-line multishell multi-term magit-imerge helm-bm helm-ack helm-R helm-company helm-c-yasnippet helm-cscope helm-git-grep helm-git-files helm-git bash-completion function-args stickyfunc-enhance magit-find-file ggtags general bm anzu clean-aindent-mode counsel-projectile company counsel dtrt-indent iedit undo-tree volatile-highlights ws-butler yasnippet-snippets yasnippet zygospore helm-gtags use-package s helm))
```

## .emacs.d/elpa
All downloaded packages are stored.

## .emacs.d/elisp
All private configurations are stored.

## .emacs.d/guides
Many useful guides and worksheets are stored.
