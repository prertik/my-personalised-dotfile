;; set up ELPA and MELPA repositories

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)

;;; package syncing to allow for syncing between different machines

;; list of packages to sync
(setq important-packages
      '(
	better-defaults
	clojure-mode
	cider
	elisp-slime-nav
	find-file-in-project
	htmlize
	idle-highlight-mode
	ido-completing-read+
	lfe-mode
	lua-mode
	magit
	kotlin-mode
	markdown-mode
	monroe
	page-break-lines
	paredit
	racket-mode
	groovy-mode
	rust-mode
	go-mode
	s
	scpaste
	smex
	jdee
	autopair
	pretty-mode
	spaceline
	spaceline-all-the-icons
	neotree
	use-package
	anzu
	nyan-mode
	yahoo-weather
	bookmark
	winum
	eyebrowse
	projectile
	multiple-cursors
	git-gutter
	flycheck
	fancy-battery
	smartparens
	))

;; activate all the packages
(package-initialize)

;; refresh package list if it is not already available
(unless package-archive-contents
  (package-refresh-contents))

;; install packages from the list that are not yet installed
(dolist (package important-packages)
  (unless (package-installed-p package)
    (package-install package)))
