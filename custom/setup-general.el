(menu-bar-mode -1)
(tool-bar-mode -1)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)



;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

(defun my-setup-indent (n)
  ;; java/c/c++
  (setq c-basic-offset n)
  ;; web development
  (setq coffee-tab-width n) ; coffeescript
  (setq javascript-indent-level n) ; javascript-mode
  (setq js-indent-level n) ; js-mode
  (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset n) ; web-mode, css in html file
  (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
  (setq css-indent-offset n) ; css-mode
  (setq typescript-indent-level n)) ; typescript-mode
(my-setup-indent 2);



;; company
(use-package company
  :init
  (global-company-mode 1)
  (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;; Package: projejctile
(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

;; Package zygospore
(use-package zygospore
  :bind (("C-x 1" . zygospore-toggle-delete-other-windows)
         ("RET" .   newline-and-indent))) ;automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)
(windmove-default-keybindings)

;; other-window
(global-set-key (kbd "M-p") 'other-window)

;; 括号匹配高亮
;; (use-package highlight-parentheses
;;   :config
;;   (global-highlight-parentheses-mode 1))

(use-package rainbow-delimiters
  :init
  (add-hook 'js2-mode-hook #'rainbow-delimiters-mode))

;; 平滑滚动
(use-package smooth-scrolling
  :ensure t
  :defer t
  :init
  (progn
    (setq smooth-scroll-margin 1)
    (smooth-scrolling-mode 1)))


;; (use-package sublimity)
;; (use-package sublimity-scroll)
;; (use-package sublimity-attractive)
;; (sublimity-mode 1)

;; (setq sublimity-scroll-weight 1
;;       sublimity-scroll-drift-length 1)

;; (sublimity-attractive-hide-bars)
;; (sublimity-attractive-hide-vertical-border)
;; (sublimity-attractive-hide-fringes)
;; (sublimity-attractive-hide-modelines)

;; (setq scroll-step 1 scroll-margin 1 scroll-conservatively 10000)

;; mouse
(xterm-mouse-mode t)
(defun track-mouse (e))

(setq mouse-sel-mode t)

(defun cursor-down-some-lines ()
  (interactive)
  (next-line))

(defun cursor-up-some-lines ()
  (interactive)
  (previous-line)
  )

(global-set-key (kbd "<mouse-4>") 'cursor-up-some-lines) ; wheel up
(global-set-key (kbd "<mouse-5>") 'cursor-down-some-lines) ; wheel down


(provide 'setup-general)


