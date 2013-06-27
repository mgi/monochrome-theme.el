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
      (bg "black")
      (fg "dim gray")
      (gg "dark gray")
      (hg "slate gray")
      (ig "white"))

  ;; bg is background. fg is foreground. gg is an hilight of fg. hg is
  ;; an hilight of gg. etc.

  (custom-theme-set-faces
   'monochrome

   `(default ((,class (:foreground ,fg :background ,bg))))
   `(cursor ((,class (:background "goldenrod"))))

   ;; Highlighting faces
   `(fringe ((,class (:background ,bg))))
   `(highlight ((,class (:foreground ,bg :background ,gg))))
   `(region ((,class (:foreground ,bg :background ,gg))))
   `(secondary-selection ((,class (:foreground: ,bg :background ,hg))))
   `(isearch ((,class (:foreground ,bg :background ,gg))))
   `(lazy-highlight ((,class (:foreground ,bg :background ,gg))))
   `(trailing-whitespace ((,class (:background "red"))))
   `(show-paren-match ((,class (:weight bold :foreground ,gg))))
   `(show-paren-mismatch ((,class (:foreground ,gg :background "dark olive green"))))

   ;; Mode line faces
   `(mode-line ((,class (:background ,gg :foreground ,bg))))
   `(mode-line-inactive ((,class (:background ,fg :foreground ,bg))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,gg))))
   `(escape-glyph ((,class (:foreground ,gg))))
   `(error ((,class (:weight bold :slant italic :foreground "red"))))
   `(warning ((,class (:foreground "yellow"))))
   `(success ((,class (:foreground "green"))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,gg))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,fg))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,gg))))
   `(font-lock-function-name-face ((,class (:foreground ,ig))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,gg))))
   `(font-lock-string-face ((,class (:foreground ,hg))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,ig))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground ,hg))))
   `(font-lock-warning-face ((,class (:foreground "yellow"))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,gg))))
   `(link-visited ((,class (:underline t :foreground ,gg))))

   ;; Speedbar
   `(speedbar-button-face ((,class (:foreground ,fg))))
   `(speedbar-file-face ((,class (:foreground ,gg))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,ig))))
   `(speedbar-tag-face ((,class (:foreground ,fg))))
   `(speedbar-selected-face ((,class (:underline ,gg :foreground ,gg))))
   `(speedbar-highlight-face ((,class (:weight bold :background ,bg :foreground ,ig))))

   ;; ido
   `(ido-first-match ((,class (:foreground ,gg))))
   `(ido-only-match ((,class (:underline ,gg :foreground ,gg))))
   `(ido-subdir ((,class (:weight bold :foreground ,ig))))

   ;; MuMaMo
   `(mumamo-background-chunk-major ((,class (:background ,bg))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,bg))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,bg))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,bg))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,bg))))
   `(mumamo-border-face-in ((,class (:slant unspecified :underline unspecified
                                     :weight bold :foreground ,ig))))
   `(mumamo-border-face-out ((,class (:slant unspecified :underline unspecified
                                      :weight bold :foreground ,ig))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,gg))))
   `(gnus-group-news-1-low ((,class (:foreground ,gg))))
   `(gnus-group-news-1-empty ((,class (:foreground ,fg))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,gg))))
   `(gnus-group-news-2-low ((,class (:foreground ,gg))))
   `(gnus-group-news-2-empty ((,class (:foreground ,fg))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,gg))))
   `(gnus-group-news-3-low ((,class (:foreground ,gg))))
   `(gnus-group-news-3-empty ((,class (:foreground ,fg))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,gg))))
   `(gnus-group-news-4-low ((,class (:foreground ,gg))))
   `(gnus-group-news-4-empty ((,class (:foreground ,fg))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,gg))))
   `(gnus-group-news-5-low ((,class (:foreground ,gg))))
   `(gnus-group-news-5-empty ((,class (:foreground ,fg))))
   `(gnus-group-news-low ((,class (:foreground ,gg))))
   `(gnus-group-mail-news-empty ((,class (:foreground ,fg :strike-through t))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,gg))))
   `(gnus-group-mail-1-low ((,class (:foreground ,gg))))
   `(gnus-group-mail-1-empty ((,class (:foreground ,fg))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,gg))))
   `(gnus-group-mail-2-low ((,class (:foreground ,gg))))
   `(gnus-group-mail-2-empty ((,class (:foreground ,fg))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,gg))))
   `(gnus-group-mail-3-low ((,class (:foreground ,gg))))
   `(gnus-group-mail-3-empty ((,class (:foreground ,fg))))
   `(gnus-group-mail-low ((,class (:foreground ,gg))))
   `(gnus-group-mail-low-empty ((,class (:foreground ,fg :strike-through t))))
   `(gnus-header-content ((,class (:foreground ,gg))))
   `(gnus-header-from ((,class (:weight bold :foreground ,gg))))
   `(gnus-header-subject ((,class (:foreground ,gg))))
   `(gnus-header-name ((,class (:foreground ,gg))))
   `(gnus-header-newsgroups ((,class (:foreground ,gg))))
   `(gnus-summary-high-ancient ((,class (:foreground ,fg))))
   `(gnus-summary-high-read ((,class (:foreground ,fg))))
   `(gnus-summary-high-ticked ((,class (:foreground ,ig))))
   `(gnus-summary-high-undownloaded ((,class (:foreground ,fg :strike-through t))))
   `(gnus-summary-high-unread ((,class (:foreground ,gg))))
   `(gnus-summary-low-ancient ((,class (:foreground ,fg))))
   `(gnus-summary-low-read ((,class (:foreground ,fg))))
   `(gnus-summary-low-ticked ((,class (:foreground ,ig))))
   `(gnus-summary-low-undownloaded ((,class (:foreground ,fg :strike-through t))))
   `(gnus-summary-low-unread ((,class (:foreground ,gg))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,fg))))
   `(gnus-summary-normal-read ((,class (:foreground ,fg))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,ig))))
   `(gnus-summary-normal-undownloaded ((,class (:foreground ,fg :strike-through t))))
   `(gnus-summary-normal-unread ((,class (:foreground ,gg))))
   `(gnus-summary-selected ((,class (:foreground ,gg :bold t))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,gg))))
   `(message-header-cc ((,class (:foreground ,gg))))
   `(message-header-other ((,class (:foreground ,gg))))
   `(message-header-subject ((,class (:foreground ,gg))))
   `(message-header-to ((,class (:weight bold :foreground ,gg))))
   `(message-cited-text ((,class (:slant italic :foreground ,gg))))
   `(message-separator ((,class (:weight bold :foreground ,gg))))

   ;; w3m
   `(w3m-anchor ((,class (:inherit link))))
   `(w3m-arrived-anchor ((,class (:inherit link-visited))))
   `(w3m-form ((,class (:foreground ,gg))))
   `(w3m-header-line-location-title ((,class (:foreground ,hg))))
   `(w3m-header-line-location-content ((,class (:foreground ,gg))))
   `(w3m-bold ((,class (:weight bold))))
   `(w3m-image-anchor ((,class (:foreground ,hg :inherit link))))
   `(w3m-image ((,class (:foreground ,hg))))
   `(w3m-session-select ((,class (:foreground ,gg))))
   `(w3m-session-selected ((,class (:foreground ,gg :underline t))))
   `(w3m-tab-background ((,class (:background ,bg :foreground ,bg))))
   `(w3m-tab-selected-background ((,class (:background ,bg :foreground ,bg))))
   `(w3m-tab-mouse ((,class (:background ,fg :foreground "yellow"))))
   `(w3m-tab-selected ((,class (:background ,fg :foreground ,ig :bold t))))
   `(w3m-tab-unselected ((,class (:background ,fg :foreground ,gg))))
   `(w3m-tab-selected-retrieving ((,class (:background ,fg :foreground ,ig :bold t))))
   `(w3m-tab-unselected-retrieving ((,class (:background ,fg :foreground ,ig))))
   `(w3m-tab-unselected-unseen ((,class (:background ,fg :foreground ,ig))))

   ;; EShell
   `(eshell-prompt ((,class (:foreground ,ig :bold t))))
   `(eshell-ls-archive ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-backup ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-clutter ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-directory ((,class (:foreground ,gg :bold t))))
   `(eshell-ls-executable ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-missing ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-product ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-readonly ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-special ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-symlink ((,class (:inherit eshell-ls-unreadable))))

   ;; Sh mode
   `(sh-heredoc ((,class (:foreground ,gg))))
   `(sh-quoted-exec ((,class (:inherit font-lock-string-face))))

   ;; Customize
   `(custom-variable-tag ((,class (:weight bold :foreground ,gg))))
   `(custom-group-tag ((,class (:inherit variable-pitch :height 1.2 :weight bold :foreground ,gg))))
   `(custom-state ((,class (:foreground ,gg))))

   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,gg))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,gg)))))

  (custom-theme-set-variables
   'monochrome
   `(ansi-color-names-vector [,bg ,gg ,fg ,hg])))

(provide-theme 'monochrome)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monochrome-theme.el ends here
