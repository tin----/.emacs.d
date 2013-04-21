;;; Generic emacs settings I cannot live without

;; Use command as the meta key
;;mac only
(setq ns-command-modifier (quote meta))

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Modeline info
(display-time-mode 1)

(condition-case nil
    (display-battery-mode 1)
        (error nil))

;; Small fringes
(set-fringe-mode '(1 . 1))

;; Emacs gurus don't need no stinking scroll bars
(when (fboundp 'toggle-scroll-bar)
  (toggle-scroll-bar -1))

;; Menu must go as well
     (condition-case nil
         (menu-bar-mode -1)
       (error nil))


;;tool bar bar too
(tool-bar-mode -1)

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Line-wrapping
(set-default 'fill-column 78)

;; Prevent the annoying beep on errors
(setq visible-bell t)

;; make sure all backup files only live in one place
(custom-set-variables

 '(backup-directory-alist (quote (("" . "~/.emacs.d/backups"))))
 '(backup-by-copying t)
 '(kept-new-versions 10)
 '(kept-old-versions 20)
 '(delete-old-versions t)
 '(version-control -1))


;; Gotta see matching parens
(show-paren-mode t)

;; Don't truncate lines
(setq truncate-lines t)
(setq truncate-partial-width-windows nil)

;; For emacsclient
(server-start)

;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (whitespace-cleanup)))

;; Trash can support
(setq delete-by-moving-to-trash t)

;; `brew install aspell --lang=en` (instead of ispell)
(setq-default ispell-program-name "aspell")
(setq ispell-list-command "list")
(setq ispell-extra-args '("--sug-mode=ultra"))

;; zap-up-to-char, forward-to-word, backward-to-word, etc
(require 'misc)

;;dired mode
(require 'dired-x)

;;visual line mode
(global-visual-line-mode t)

;;set default directory
(cd (expand-file-name "~"))

;;add newline-and-indent automatically
(electric-indent-mode +1)
