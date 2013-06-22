;;; monochrome-theme.el --- A dark Emacs 24 theme for your focused hacking sessions

;; Copyright (C) 2011 Xavier Noria
;;
;; Author: Xavier Noria <fxn@hashref.com>
;;
;; Just throw this file into ~/.emacs.d and
;;
;;     M-x load-theme RET monochrome RET
;;
;; or put in your init file
;;
;;     (load-theme 'monochrome)
;;
;; This theme is based on the builtin dichromacy theme.
;;
;; Works with Emacs 24.

(deftheme monochrome
  "Gray on black for your focused hacking sessions.")

(let ((class '((class color) (min-colors 10)))
      (black "black")
      (white "white")
      (lgray "dark gray")
      (dgray "dim gray")
      (sgray "slate gray"))

  (custom-theme-set-faces
   'monochrome

   `(default ((,class (:foreground ,dgray :background ,black))))
   `(cursor ((,class (:background "red"))))

   ;; Highlighting faces
   `(fringe ((,class (:background ,black))))
   `(highlight ((,class (:foreground ,black :background ,lgray))))
   `(region ((,class (:foreground ,black :background ,lgray))))
   `(secondary-selection ((,class (:foreground: ,black :background ,sgray))))
   `(isearch ((,class (:foreground ,black :background ,lgray))))
   `(lazy-highlight ((,class (:foreground ,black :background ,lgray))))
   `(trailing-whitespace ((,class (:background "red"))))
   `(show-paren-match ((,class (:weight bold))))
   `(show-paren-mismatch ((,class (:foreground ,lgray :background "dark olive green"))))

   ;; Mode line faces
   `(mode-line ((,class (:box (:line-width -1 :style released-button)
			      :background "#e5e5e5" :foreground ,black))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
				       :background "#b0b0b0"
				       :foreground ,black))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,lgray))))
   `(escape-glyph ((,class (:foreground ,lgray))))
   `(error ((,class (:weight bold :slant italic :foreground "red"))))
   `(warning ((,class (:foreground "yellow"))))
   `(success ((,class (:foreground "green"))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,lgray))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,dgray))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-function-name-face ((,class (:foreground ,white))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-string-face ((,class (:foreground ,sgray))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,white))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground ,sgray))))
   `(font-lock-warning-face ((,class (:foreground "yellow"))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,lgray))))
   `(link-visited ((,class (:underline t :foreground ,lgray))))

   ;; Speedbar
   `(speedbar-button-face ((,class (:foreground ,dgray))))
   `(speedbar-file-face ((,class (:foreground ,lgray))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,white))))
   `(speedbar-tag-face ((,class (:foreground ,dgray))))
   `(speedbar-selected-face ((,class (:underline ,lgray :foreground ,lgray))))
   `(speedbar-highlight-face ((,class (:weight bold :background ,black :foreground ,white))))

   ;; ido
   `(ido-first-match ((,class (:foreground ,lgray))))
   `(ido-only-match ((,class (:underline ,lgray :foreground ,lgray))))
   `(ido-subdir ((,class (:weight bold :foreground ,white))))

   ;; MuMaMo
   `(mumamo-background-chunk-major ((,class (:background ,black))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,black))))
   `(mumamo-border-face-in ((,class (:slant unspecified :underline unspecified
                                     :weight bold :foreground ,white))))
   `(mumamo-border-face-out ((,class (:slant unspecified :underline unspecified
                                      :weight bold :foreground ,white))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-1-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-1-empty ((,class (:foreground ,dgray))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-2-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-2-empty ((,class (:foreground ,dgray))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-3-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-3-empty ((,class (:foreground ,dgray))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-4-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-4-empty ((,class (:foreground ,dgray))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-5-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-5-empty ((,class (:foreground ,dgray))))
   `(gnus-group-news-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-news-empty ((,class (:foreground ,dgray :strike-through t))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-1-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-1-empty ((,class (:foreground ,dgray))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-2-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-2-empty ((,class (:foreground ,dgray))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-3-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-3-empty ((,class (:foreground ,dgray))))
   `(gnus-group-mail-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-low-empty ((,class (:foreground ,dgray :strike-through t))))
   `(gnus-header-content ((,class (:foreground ,lgray))))
   `(gnus-header-from ((,class (:weight bold :foreground ,lgray))))
   `(gnus-header-subject ((,class (:foreground ,lgray))))
   `(gnus-header-name ((,class (:foreground ,lgray))))
   `(gnus-header-newsgroups ((,class (:foreground ,lgray))))
   `(gnus-summary-high-ancient ((,class (:foreground ,dgray))))
   `(gnus-summary-high-read ((,class (:foreground ,dgray))))
   `(gnus-summary-high-ticked ((,class (:foreground ,white))))
   `(gnus-summary-high-undownloaded ((,class (:foreground ,dgray :strike-through t))))
   `(gnus-summary-high-unread ((,class (:foreground ,lgray))))
   `(gnus-summary-low-ancient ((,class (:foreground ,dgray))))
   `(gnus-summary-low-read ((,class (:foreground ,dgray))))
   `(gnus-summary-low-ticked ((,class (:foreground ,white))))
   `(gnus-summary-low-undownloaded ((,class (:foreground ,dgray :strike-through t))))
   `(gnus-summary-low-unread ((,class (:foreground ,lgray))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,dgray))))
   `(gnus-summary-normal-read ((,class (:foreground ,dgray))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,white))))
   `(gnus-summary-normal-undownloaded ((,class (:foreground ,dgray :strike-through t))))
   `(gnus-summary-normal-unread ((,class (:foreground ,lgray))))
   `(gnus-summary-selected ((,class (:foreground ,lgray :bold t))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,lgray))))
   `(message-header-cc ((,class (:foreground ,lgray))))
   `(message-header-other ((,class (:foreground ,lgray))))
   `(message-header-subject ((,class (:foreground ,lgray))))
   `(message-header-to ((,class (:weight bold :foreground ,lgray))))
   `(message-cited-text ((,class (:slant italic :foreground ,lgray))))
   `(message-separator ((,class (:weight bold :foreground ,lgray))))

   ;; w3m
   `(w3m-anchor ((,class (:inherit link))))
   `(w3m-arrived-anchor ((,class (:inherit link-visited))))
   `(w3m-form ((,class (:foreground ,lgray))))
   `(w3m-header-line-location-title ((,class (:foreground ,sgray))))
   `(w3m-header-line-location-content ((,class (:foreground ,lgray))))
   `(w3m-bold ((,class (:weight bold))))
   `(w3m-image-anchor ((,class (:foreground ,sgray :inherit link))))
   `(w3m-image ((,class (:foreground ,sgray))))
   `(w3m-session-select ((,class (:foreground ,lgray))))
   `(w3m-session-selected ((,class (:foreground ,lgray :underline t))))
   `(w3m-tab-background ((,class (:background ,black :foreground ,black))))
   `(w3m-tab-selected-background ((,class (:background ,black :foreground ,black))))
   `(w3m-tab-mouse ((,class (:background ,dgray :foreground "yellow"))))
   `(w3m-tab-selected ((,class (:background ,dgray :foreground ,white :bold t))))
   `(w3m-tab-unselected ((,class (:background ,dgray :foreground ,lgray))))
   `(w3m-tab-selected-retrieving ((,class (:background ,dgray :foreground ,white :bold t))))
   `(w3m-tab-unselected-retrieving ((,class (:background ,dgray :foreground ,white))))
   `(w3m-tab-unselected-unseen ((,class (:background ,dgray :foreground ,white))))

   ;; EShell
   `(eshell-prompt ((,class (:foreground ,white :bold t))))
   `(eshell-ls-archive ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-backup ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-clutter ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-directory ((,class (:foreground ,lgray :bold t))))
   `(eshell-ls-executable ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-missing ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-product ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-readonly ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-special ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-symlink ((,class (:inherit eshell-ls-unreadable))))

   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,lgray))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,lgray)))))

  (custom-theme-set-variables
   'monochrome
   `(ansi-color-names-vector [,black ,lgray ,dgray ,sgray])))

(provide-theme 'monochrome)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monochrome-theme.el ends here
