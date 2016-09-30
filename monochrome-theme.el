;;; monochrome-theme.el --- A monochrome emacs theme for your focused hacking sessions

;; Copyright (C) 2011 Xavier Noria
;;
;; Author: Xavier Noria <fxn@hashref.com>
;;         Manuel Giraud <manuel@ledu-giraud.fr>
;;
;; This theme is based on the builtin dichromacy theme.
;;
;; Works with Emacs 25.

(deftheme monochrome
  "Monochrome for your focused hacking sessions.")

(defun monochrome-set (bg fg gg eg dg)
  "bg is background.
   fg is foreground.
   gg is an fg with more contrast.
   eg is an fg with less contrast.
   dg is an eg with less contrast."

  (let ((class '((class color) (min-colors 10))))

    (custom-theme-set-faces
     'monochrome

     `(default ((,class (:foreground ,fg :background ,bg))))
     `(cursor ((,class (:background ,fg))))

     ;; Highlighting faces
     `(fringe ((,class (:background ,bg))))
     `(highlight ((,class (:foreground ,bg :background ,fg))))
     `(region ((,class (:foreground ,bg :background ,fg))))
     `(secondary-selection ((,class (:foreground: ,bg :background ,fg))))
     `(isearch ((,class (:foreground ,bg :background ,fg))))
     `(isearch-fail ((,class (:background ,fg :foreground ,bg))))
     `(lazy-highlight ((,class (:foreground ,bg :background ,eg))))
     `(trailing-whitespace ((,class (:background ,fg))))
     `(show-paren-match ((,class (:weight bold :foreground ,fg))))
     `(show-paren-mismatch ((,class (:foreground ,bg :background ,fg))))

     ;; Mode line faces
     `(mode-line ((,class (:background ,fg :foreground ,bg))))
     `(mode-line-inactive ((,class (:background ,eg :foreground ,bg))))

     ;; Escape and prompt faces
     `(minibuffer-prompt ((,class (:weight bold :foreground ,gg))))
     `(escape-glyph ((,class (:foreground ,gg))))
     `(error ((,class (:weight bold :foreground ,gg))))
     `(warning ((,class (:underline t))))
     `(success ((,class (:foreground ,gg))))

     ;; Font lock faces
     `(font-lock-builtin-face ((,class (:foreground ,fg))))
     `(font-lock-comment-face ((,class (:weight bold :foreground ,fg))))
     `(font-lock-constant-face ((,class (:foreground ,fg))))
     `(font-lock-function-name-face ((,class (:foreground ,fg))))
     `(font-lock-keyword-face ((,class (:foreground ,fg))))
     `(font-lock-string-face ((,class (:foreground ,gg))))
     `(font-lock-type-face ((,class (:foreground ,fg))))
     `(font-lock-variable-name-face ((,class (:foreground ,fg))))
     `(font-lock-warning-face ((,class (:weight bold :foreground ,fg))))
     `(font-lock-regexp-grouping-backslash ((,class (:inherit normal))))

     ;; Dired
     `(dired-directory ((,class (:weight bold))))

     ;; Info
     `(info-menu-header ((,class (:weight bold :height 1.1))))
     `(info-menu-star ((,class (:weight normal))))
     `(info-title-1 ((,class (:weight bold :height 1.8))))
     `(info-title-2 ((,class (:weight bold :height 1.44))))
     `(info-title-3 ((,class (:weight bold :height 1.2))))
     `(info-title-4 ((,class (:weight bold))))
     `(info-xref ((,class (:weight normal))))
     `(info-header-node ((,class (:foreground ,gg))))
     `(info-header-xref ((,class (:foreground ,fg))))
     `(info-node ((,class (:foreground ,fg))))
     `(Info-quoted ((,class (:inherit normal))))

     ;; Button and link faces
     `(link ((,class (:underline t :foreground ,gg :weight bold))))
     `(link-visited ((,class (:underline t :foreground ,gg))))

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
     `(gnus-group-news-low-empty ((,class (:foreground ,fg :strike-through t))))
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
     `(gnus-summary-high-ticked ((,class (:foreground ,fg))))
     `(gnus-summary-high-undownloaded ((,class (:foreground ,fg :strike-through t))))
     `(gnus-summary-high-unread ((,class (:foreground ,gg))))
     `(gnus-summary-low-ancient ((,class (:foreground ,fg))))
     `(gnus-summary-low-read ((,class (:foreground ,fg))))
     `(gnus-summary-low-ticked ((,class (:foreground ,fg))))
     `(gnus-summary-low-undownloaded ((,class (:foreground ,fg :strike-through t))))
     `(gnus-summary-low-unread ((,class (:foreground ,gg))))
     `(gnus-summary-normal-ancient ((,class (:foreground ,fg))))
     `(gnus-summary-normal-read ((,class (:foreground ,fg))))
     `(gnus-summary-normal-ticked ((,class (:foreground ,fg))))
     `(gnus-summary-normal-undownloaded ((,class (:foreground ,fg :strike-through t))))
     `(gnus-summary-normal-unread ((,class (:foreground ,gg))))
     `(gnus-summary-selected ((,class (:foreground ,gg :bold t))))
     `(gnus-summary-cancelled ((,class (:foreground ,fg :strike-through t))))
     `(gnus-cite-1 ((,class (:foreground ,eg))))
     `(gnus-cite-2 ((,class (:foreground ,eg))))
     `(gnus-cite-3 ((,class (:foreground ,eg))))
     `(gnus-cite-4 ((,class (:foreground ,eg))))
     `(gnus-cite-5 ((,class (:foreground ,eg))))
     `(gnus-cite-6 ((,class (:foreground ,dg))))
     `(gnus-cite-7 ((,class (:foreground ,dg))))
     `(gnus-cite-8 ((,class (:foreground ,dg))))
     `(gnus-cite-9 ((,class (:foreground ,dg))))
     `(gnus-cite-10 ((,class (:foreground ,dg))))
     `(gnus-cite-11 ((,class (:foreground ,dg))))
     `(mm-uu-extract ((,class (:foreground ,gg :background ,fg))))

     ;; Message faces
     `(message-header-name ((,class (:foreground ,gg))))
     `(message-header-cc ((,class (:foreground ,gg))))
     `(message-header-other ((,class (:foreground ,gg))))
     `(message-header-subject ((,class (:foreground ,gg))))
     `(message-header-to ((,class (:weight bold :foreground ,gg))))
     `(message-header-xheader ((,class (:foreground ,gg))))
     `(message-header-newsgroups ((,class (:weight bold :foreground ,fg))))
     `(message-cited-text ((,class (:slant italic :foreground ,gg))))
     `(message-mml ((,class (:foreground ,fg))))
     `(message-separator ((,class (:weight bold :foreground ,gg))))

     ;; w3m
     `(w3m-anchor ((,class (:inherit link))))
     `(w3m-arrived-anchor ((,class (:inherit link-visited))))
     `(w3m-form ((,class (:foreground ,gg))))
     `(w3m-header-line-location-title ((,class (:foreground ,fg))))
     `(w3m-header-line-location-content ((,class (:foreground ,gg))))
     `(w3m-bold ((,class (:weight bold))))
     `(w3m-image-anchor ((,class (:foreground ,fg :inherit link))))
     `(w3m-image ((,class (:foreground ,fg))))
     `(w3m-session-select ((,class (:foreground ,gg))))
     `(w3m-session-selected ((,class (:foreground ,gg :underline t))))
     `(w3m-tab-background ((,class (:background ,bg :foreground ,bg))))
     `(w3m-tab-selected-background ((,class (:background ,bg :foreground ,bg))))
     `(w3m-tab-mouse ((,class (:background ,fg :foreground "yellow"))))
     `(w3m-tab-selected ((,class (:background ,fg :foreground ,bg :bold t))))
     `(w3m-tab-unselected ((,class (:background ,bg :foreground ,fg))))
     `(w3m-tab-selected-retrieving ((,class (:background ,fg :foreground ,bg :bold t))))
     `(w3m-tab-unselected-retrieving ((,class (:background ,bg :foreground ,fg))))
     `(w3m-tab-unselected-unseen ((,class (:background ,bg :foreground ,fg))))

     ;; Org-mode
     `(org-agenda-structure ((,class (:foreground ,fg :underline t))))
     `(org-agenda-date ((,class (:foreground ,gg :underline nil))))
     `(org-agenda-date-today ((,class (:foreground ,fg :bold t :underline nil))))
     `(org-time-grid ((,class (:foreground ,fg))))

     ;; EShell
     `(eshell-prompt ((,class (:foreground ,fg :bold t))))
     `(eshell-ls-unreadable ((,class (:foreground ,dg))))
     `(eshell-ls-archive ((,class (:inherit eshell-ls-unreadable))))
     `(eshell-ls-backup ((,class (:inherit eshell-ls-unreadable))))
     `(eshell-ls-clutter ((,class (:inherit eshell-ls-unreadable))))
     `(eshell-ls-directory ((,class (:inherit dired-directory))))
     `(eshell-ls-executable ((,class (:inherit eshell-ls-unreadable))))
     `(eshell-ls-missing ((,class (:inherit eshell-ls-unreadable))))
     `(eshell-ls-product ((,class (:inherit eshell-ls-unreadable))))
     `(eshell-ls-readonly ((,class (:inherit eshell-ls-unreadable))))
     `(eshell-ls-special ((,class (:inherit eshell-ls-unreadable))))
     `(eshell-ls-symlink ((,class (:inherit eshell-ls-unreadable))))

     ;; Sh mode
     `(sh-heredoc ((,class (:foreground ,gg))))
     `(sh-quoted-exec ((,class (:inherit font-lock-string-face))))

     ;; Slime
     `(slime-repl-inputed-output-face ((,class (:foreground ,fg))))
     `(slime-repl-output-face ((,class (:weight bold :foreground ,fg))))

     ;; Mingus
     `(mingus-directory-face ((,class (:inherit dired-directory))))
     `(mingus-artist-face ((,class (:foreground ,fg))))
     `(mingus-album-face ((,class (:foreground ,fg :underline t))))
     `(mingus-album-stale-face ((,class (:foreground ,fg))))
     `(mingus-song-file-face ((,class (:foreground ,fg))))
     `(mingus-playlist-face ((,class (:foreground ,fg))))
     `(mingus-mark-face ((,class (:foreground ,gg))))
     `(mingus-playing-face ((,class (:foreground ,gg))))
     `(mingus-pausing-face ((,class (:foreground ,eg))))
     `(mingus-stopped-face ((,class (:foreground ,gg))))

     ;; Customize
     `(custom-variable-tag ((,class (:weight bold :foreground ,gg))))
     `(custom-group-tag ((,class (:inherit variable-pitch :height 1.2 :weight bold :foreground ,gg))))
     `(custom-state ((,class (:foreground ,gg)))))))

(defun monochrome-dark ()
  (interactive)
  (monochrome-set "black" "gray70" "white" "gray40" "gray30"))

(defun monochrome-bright ()
  (interactive)
  (monochrome-set "white" "gray20" "black" "gray40" "gray50"))

(defun monochrome-toggle ()
  "Toggle between bright/dark version of the theme."
  (interactive)
  (if (string= (face-attribute 'default :background) "black")
      (monochrome-bright)
    (monochrome-dark)))

(provide-theme 'monochrome)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monochrome-theme.el ends here
