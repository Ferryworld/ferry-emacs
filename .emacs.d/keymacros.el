(fset 'ferry-macro-add-quotation-mark
      [M-left ?\" M-right ?\"])

(global-set-key [(f6)] 'dired-jump)


(fset 'ferry-macro-show-sct-case
      [?\C-u ?1 ?\M-x ?o ?c ?c ?u ?r return ?S ?C ?E ?N ?\\ ?| ?G ?I ?V ?E ?N ?\\ ?| ?W ?H ?E ?N ?\\ ?| ?T ?H ?E ?N return])

(defun ferry-position-to-kill-ring ()
  "Copy to the kill ring a string in the format \"file-name:line-number\"
for the current buffer's file name, and the line number at point."
  (interactive)
  (kill-new
   (format "%s::%d" (buffer-file-name) (save-restriction
                                         (widen) (line-number-at-pos)))))

(defun ferry-insert-file-name (filename &optional args)
  "Insert name of file FILENAME into buffer after point.

  Prefixed with \\[universal-argument], expand the file name to
  its fully canocalized path.  See `expand-file-name'.

  Prefixed with \\[negative-argument], use relative path to file
  name from current directory, `default-directory'.  See
  `file-relative-name'.

  The default with no prefix is to insert the file name exactly as
  it appears in the minibuffer prompt."
  ;; Based on insert-file in Emacs -- ashawley 20080926
  (interactive "*fInsert file name: \nP")
  (cond ((eq '- args)
         (insert (file-relative-name filename)))
        ((not (null args))
         (insert (expand-file-name filename)))
        (t
         (insert filename))))

(global-set-key "\C-c\C-i" 'ferry-insert-file-name)

(defun ferry-company-color ()
  (interactive)
  (require 'color)
  (let ((bg (face-attribute 'default :background))
        (ac (face-attribute 'match :foreground)))
    (custom-set-faces
     `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
     `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
     `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
     `(company-tooltip-common ((t (:inherit font-lock-constant-face))))
     `(company-preview-common ((t (:foreground ,ac :background ,(color-lighten-name bg 10)))))))
)
