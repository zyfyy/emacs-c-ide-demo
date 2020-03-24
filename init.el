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
  :ensure t
  :config
  (bind-key [f8] 'neotree-toggle)
)

;;markdown
(use-package markdown-mode)
(use-package markdown-mode+)
(use-package markdown-toc)

;; js2-mode
(use-package js2-mode)
;(add-to-list 'auto-mode-alist '("\\.es$" . js2-jsx-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(use-package emmet-mode)

;;waka-mode
;;(use-package wakatime-mode)
;;(global-wakatime-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (highlight-parentheses mouse-slider-mode zygospore yasnippet ws-butler use-package undo-tree neotree monokai-theme markdown-toc markdown-mode+ js2-mode iedit helm-swoop helm-projectile dtrt-indent company comment-dwim-2 clean-aindent-mode anzu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
