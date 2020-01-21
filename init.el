(package-initialize)
(setq
 make-backup-files nil)

;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.org/packages/") t)

(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
                                        ;("popkit" . "https://elpa.popkit.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))


;; package manager
(when (not package-archive-contents)
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)



;; custom-things
(add-to-list 'load-path "~/.emacs.d/custom")
(require 'setup-general)
(require 'setup-helm)


;;monokai theme
(use-package monokai-theme
  :ensure t)

;;neotree
(use-package neotree
  :ensure t)
(global-set-key [f8] 'neotree-toggle)

;;markdown
(use-package markdown-mode)
(use-package markdown-mode+)
(use-package markdown-toc)

;; js2-mode
(use-package js2-mode)
(add-to-list 'auto-mode-alist '("\\.es$" . js2-jsx-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-jsx-mode))



;;waka-mode
;;(use-package wakatime-mode)
;;(global-wakatime-mode 1)

;;gradle
;; (use-package groovy-mode)

;;kotlin
;; (use-package kotlin-mode)


