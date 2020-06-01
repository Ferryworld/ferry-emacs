# ferry-emacs
My emacs configurations

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

## .emacs.d/elpa
All downloaded packages are stored.

## .emacs.d/elisp
All private configurations are stored.

## .emacs.d/guides
Many useful guides and worksheets are stored.
